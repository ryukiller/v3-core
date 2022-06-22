// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IAriswapV3PoolImmutables.sol';
import './pool/IAriswapV3PoolState.sol';
import './pool/IAriswapV3PoolDerivedState.sol';
import './pool/IAriswapV3PoolActions.sol';
import './pool/IAriswapV3PoolOwnerActions.sol';
import './pool/IAriswapV3PoolEvents.sol';

/// @title The interface for a Ariswap V3 Pool
/// @notice A Ariswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IAriswapV3Pool is
    IAriswapV3PoolImmutables,
    IAriswapV3PoolState,
    IAriswapV3PoolDerivedState,
    IAriswapV3PoolActions,
    IAriswapV3PoolOwnerActions,
    IAriswapV3PoolEvents
{

}
