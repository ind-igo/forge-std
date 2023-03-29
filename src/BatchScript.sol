// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2 <0.9.0;

// 💬 ABOUT
// Standard Library's Gnosis Safe transaction batching script.

// 🧩 MODULES
import {console} from "./console.sol";
import {console2} from "./console2.sol";
import {StdChains} from "./StdChains.sol";
import {stdJson} from "./StdJson.sol";
import {stdMath} from "./StdMath.sol";
import {StdStorage, stdStorageSafe} from "./StdStorage.sol";
import {VmSafe} from "./Vm.sol";

// 📦 BOILERPLATE
import {Script} from "./Script.sol";

// ⭐️ SCRIPT
abstract contract BatchScript is Script {
    // Deterministic deployment address of the Gnosis Safe Multisend contract.
    address internal constant SAFE_MULTISEND_ADDRESS_PRI = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761; // TODO mainnet, goerli, most others
    address internal constant SAFE_MULTISEND_ADDRESS_SEC = 0x998739BFdAAdde7C933B942a68053933098f9EDa; // TODO optimism, some others
}


