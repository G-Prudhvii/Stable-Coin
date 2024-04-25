// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {DSCEngine} from "../src/DSCEngine.sol";
import {DecentralisedStableCoin} from "../src/DecentralisedStableCoin.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployDSC is Script {
    address[] public tokenAddresses;
    address[] public priceFeedAddresses;

    function run() external returns (DecentralisedStableCoin, DSCEngine, HelperConfig) {
        HelperConfig config = new HelperConfig();

        (address wbtcUsdPriceFeed, address wethUsdPriceFeed, address wbtc, address weth, uint256 deployerKey) =
            config.activeNetworkConfig();

        tokenAddresses = [wbtc, weth];
        priceFeedAddresses = [wbtcUsdPriceFeed, wethUsdPriceFeed];

        vm.startBroadcast(deployerKey);
        DecentralisedStableCoin dsc = new DecentralisedStableCoin();
        DSCEngine engine = new DSCEngine(tokenAddresses, priceFeedAddresses, address(dsc));
        dsc.transferOwnership(address(engine));
        vm.stopBroadcast();

        return (dsc, engine, config);
    }
}
