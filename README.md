# Requirements

1. `gofmt` must be installed and on your `PATH`
2. You must have git version 2.9+ (June 2016) installed

# Installation

## Using Script

```bash
curl -fsSL "https://raw.githubusercontent.com/darwish/githooks/raw/master/githooks-install.sh" -o githooks-install.sh
sh githooks-install.sh && rm githooks-install.sh
```

## Manually

1. Create a directory `~/.githooks/` and copy the `pre-commit` file into it.
2. Make the `pre-commit` file executable:

```bash
chmod +x ~/.githooks/pre-commit
```

3. Configure the git global hooks path:

```bash
git config --global core.hooksPath ~/.githooks
```
