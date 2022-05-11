#!/bin/bash

cd contracts/circuits

mkdir _plonkMultiplier3


echo "compiling _plonkMultiplier3.circom..."

# compile circuit

circom _plonkMultiplier3.circom --r1cs --wasm --sym -o _plonkMultiplier3
snarkjs r1cs info _plonkMultiplier3/_plonkMultiplier3.r1cs

# Start a new zkey and make a contribution

snarkjs zkey contribute _plonkMultiplier3/circuit_0000.zkey _plonkMultiplier3/circuit_final.zkey --name="1st Contributor Name" -v -e="random text"
snarkjs zkey export verificationkey _plonkMultiplier3/circuit_final.zkey _plonkMultiplier3/verification_key.json

# generate solidity contract
snarkjs zkey export solidityverifier _plonkMultiplier3/circuit_final.zkey ../_plonkMultiplier3Verifier.sol

cd ../..