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
    //     "to": "<checksummed address>",
    //     "value": 0, // Value in wei
    //     "data": "<0x prefixed hex string>",
    //     "operation": 0,  // 0 CALL, 1 DELEGATE_CALL
    //     "safeTxGas": 0,  // Max gas to use in the transaction

    // Used by refund mechanism, not needed here
    //     "gasToken": "<checksummed address>", // Token address (hold by the Safe) to be used as a refund to the sender, if `null` is Ether
    //     "baseGas": 0,  // Gast costs not related to the transaction execution (signature check, refund payment...)
    //     "gasPrice": 0,  // Gas price used for the refund calculation
    //     "refundReceiver": "<checksummed address>", //Address of receiver of gas payment (or `null` if tx.origin)

    //     "nonce": 0,  // Nonce of the Safe, transaction cannot be executed until Safe's nonce is not equal to this nonce
    //     "contractTransactionHash": "string",  // Contract transaction hash calculated from all the field
    //     "sender": "<checksummed address>",  // Owner of the Safe proposing the transaction. Must match one of the signatures
    //     "signature": "<0x prefixed hex string>",  // One or more ethereum ECDSA signatures of the `contractTransactionHash` as an hex string

    // Not required
    //     "origin": "string"  // Give more information about the transaction, e.g. "My Custom Safe app"

    // Deterministic deployment address of the Gnosis Safe Multisend contract.
    address internal constant SAFE_MULTISEND_ADDRESS_PRI = 0xA238CBeb142c10Ef7Ad8442C6D1f9E89e07e7761; // TODO mainnet, goerli, most others
    address internal constant SAFE_MULTISEND_ADDRESS_SEC = 0x998739BFdAAdde7C933B942a68053933098f9EDa; // TODO optimism, some others

    enum Operation {
        CALL,
        DELEGATECALL
    }

    struct Transaction {
        address to;
        uint256 value;
        bytes data;
        Operation operation;
        uint256 safeTxGas;
    }

    // Array of batch transactions
    Transaction[] public transactions;

    // TODO batch together transactions.
    //function _batch(address to_, uint256 value_, bytes memory data_, Operation op_, uint256 safeTxGas_) internal {}
    function _batchMulti() internal {
        //bytes memory safeTx = abi.enco
        for(uint256 i; i < transactions.length; i++) {
            Transaction memory tx_ = transactions[i];
            //_batch(tx_.to, tx_.value, tx_.data, tx_.operation, tx_.safeTxGas);
            bytes.concat(abi.encodeWithSignature())
        }
    }
}


