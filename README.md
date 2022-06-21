# Ariswap V3

[![Lint](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/lint.yml/badge.svg)](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/lint.yml)
[![Tests](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/tests.yml/badge.svg)](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/tests.yml)
[![Fuzz Testing](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/fuzz-testing.yml/badge.svg)](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/fuzz-testing.yml)
[![Mythx](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/mythx.yml/badge.svg)](https://github.com/Ariswap/uniswap-v3-core/actions/workflows/mythx.yml)
[![npm version](https://img.shields.io/npm/v/@ariswap/v3-core/latest.svg)](https://www.npmjs.com/package/@ariswap/v3-core/v/latest)

This repository contains the core smart contracts for the Ariswap V3 Protocol.
For higher level contracts, see the [uniswap-v3-periphery](https://github.com/Ariswap/uniswap-v3-periphery)
repository.

## Bug bounty

This repository is subject to the Ariswap V3 bug bounty program, per the terms defined [here](./bug-bounty.md).

## Local deployment

In order to deploy this code to a local testnet, you should install the npm package
`@ariswap/v3-core`
and import the factory bytecode located at
`@ariswap/v3-core/artifacts/contracts/AriswapV3Factory.sol/AriswapV3Factory.json`.
For example:

```typescript
import {
  abi as FACTORY_ABI,
  bytecode as FACTORY_BYTECODE,
} from '@ariswap/v3-core/artifacts/contracts/AriswapV3Factory.sol/AriswapV3Factory.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all Ariswap code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The Ariswap v3 interfaces are available for import into solidity smart contracts
via the npm artifact `@ariswap/v3-core`, e.g.:

```solidity
import '@ariswap/v3-core/contracts/interfaces/IAriswapV3Pool.sol';

contract MyContract {
  IAriswapV3Pool pool;

  function doSomethingWithPool() {
    // pool.swap(...);
  }
}

```

## Licensing

The primary license for Ariswap V3 Core is the Business Source License 1.1 (`BUSL-1.1`), see [`LICENSE`](./LICENSE). However, some files are dual licensed under `GPL-2.0-or-later`:

- All files in `contracts/interfaces/` may also be licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/interfaces/LICENSE`](./contracts/interfaces/LICENSE)
- Several files in `contracts/libraries/` may also be licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/libraries/LICENSE`](contracts/libraries/LICENSE)

### Other Exceptions

- `contracts/libraries/FullMath.sol` is licensed under `MIT` (as indicated in its SPDX header), see [`contracts/libraries/LICENSE_MIT`](contracts/libraries/LICENSE_MIT)
- All files in `contracts/test` remain unlicensed (as indicated in their SPDX headers).
