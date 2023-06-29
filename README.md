# Installation

## Using Script

```bash
curl -fsSL "https://raw.githubusercontent.com/darwish/githooks/raw/master/githooks-install.sh" -o githooks-install.sh
sh githooks-install.sh
```

## Manually

1. Create a directory `~/.githooks/` and copy the `pre-commit` file into it.
2. Make the `pre-commit` file executable:

```bash
chmod +x ~/.githooks/pre-commit
```

3. Configure the git global hooks path (requires git 2.9+ (June 2016):

```bash
git config --global core.hooksPath ~/.githooks
```
