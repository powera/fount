
== Generating keys ==

1. Use the `openssl genrsa` command to create a private key.
2. Use the `openssl rsa -pubout` command to create a public key.
3. Commit the public key here.

To continue to using the key to mint an NFT:
1. Create a contract.
2. Use the private key to sign a message with `openssl dgst -sign`.
3. Verify the signature with `openssl dgst -verify`.
