// SPDX-License-Identifier: MIT

// This is considered an Exogenous, Decentralized, Anchored (pegged), Crypto Collateralized low volitility coin

// Layout of Contract:
// version
// imports
// interfaces, libraries, contracts
// errors
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

pragma solidity ^0.8.24;

/**
 * @author  . Prudhvi
 * @title   . DSCEngine
 * @dev     . --
 *
 * The system is designed to be as minimal as possible, and have the tokens maintain a 1 token == $1 peg.
 * This stablecoin has the properties:
 *    - Exogenous Collateral
 *    - Dollar Pegged
 *    - Alogorithmically Stable
 *
 * It is similar to DAI if DAI had no governance, no fees, and was only backed by WBTC and WETH.
 *
 * Our DSC system should always be "OVERCOLLATERALISED". At no point, should the value of all collateral <= the $ backed value of all the DSC.
 *
 * @notice  . This contract is the core of the DSC system. It handles all the logic for mining and redeeming DSC, as well as depositing & withdrawing collateral.
 * @notice  . This contract is VERY loosely based on the MakerDAO DSS (DAI) system.
 */

contract DSCEngine {
    function depositCollateralAndMintDsc() external {}
    function redeemCollateralForDsc() external {}
    function burnDsc() external {}
    function liquidate() external {}
    function getHealthFactor() external view {}
}
