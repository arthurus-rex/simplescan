# Selecting keywords
This is application-specific and at user discretion.  For example:
1. Someone evaluating the extent of classic crypto usage could select only the offending algorithms, plus a few key dependencies;
2. Someone checking for CNSA 2.0+ compliance could select for algorithms it does not allow (e.g. SHA256) and ignore ones it does (e.g. SHA512);
3. Identifying packages known to be lacking critical PQC algorithms (such as `go/crypto` in Golang or `pyca/cryptography`)

The suggested keyword lists below are not exhaustive and will be frequently updated for efficacy and efficiency.  Notice that the regex in simplescan are **simple**, and care should be taken with special characters.

## Quantum-vulnerable classic cryptography
```
rsa
ecc
sha256
sha3
ed25519
ed448
x25519
x448
ecdh
ecdsa
dsa
aes
```

## Quantum-safe classic cryptography
```
aes256
sha256
sha384
sha512
```

## NIST-accepted PQC algorithms
```
mlkem
ml-kem
mldsa
ml-dsa
slhdsa
slh-dsa
lms
xmss
```

## Outdated PQC algorithm names
```
kyber
dilithium
crystals
falcon
```

## CNSA 2.0+ approved algorithms
```
mlkem1024
ml-kem1024
ml-kem-1024
mldsa87
ml-dsa87
ml-dsa-87
sha512
aes256
```
