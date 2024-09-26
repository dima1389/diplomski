@REM MSYS2
@REM pacman -Sy
@REM pacman -Su
@REM pacman -Syu
@REM pacman -S openssl
@REM openssl version

@REM pip install --upgrade pip setuptools wheel
@REM pip install cryptography

@echo off
REM OpenSSL.bat - Script to generate keys, hash, sign, and verify a file using OpenSSL

REM Step 1: Generate an RSA private key
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048

REM Step 2: Extract the public key from the private key
openssl rsa -pubout -in private_key.pem -out public_key.pem

REM Step 3: Compute the SHA256 hash of main.bin and save it to main.sha256
openssl dgst -sha256 -binary main.bin > main.sha256

REM Step 4: Sign the hash with the private key and save the signature to main-signature.bin
openssl pkeyutl -sign -in main.sha256 -inkey private_key.pem -out main-signature.bin

REM Step 5: Verify the signature using the public key
openssl pkeyutl -verify -in main.sha256 -sigfile main-signature.bin -pubin -inkey public_key.pem

REM Step6: Merge main.s19 with main-signature.bin
srec_cat main.s19 -Motorola main-signature.bin -Binary -offset 0x0800B000 -o main-signed.s19 -Motorola -Output_Block_Size=16

pause
