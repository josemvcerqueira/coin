# Install Sui

```bash
brew install sui
```

# Switch to testnet

```bash
sui client switch --env testnet
```

# Get faucet coins

```bash
sui client faucet
```

Check docs: [here](https://docs.sui.io/references/cli/client#commands)

# Deploy this package

```bash
sui move build --path ./move/
```
