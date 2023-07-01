# Homebrew Tap for WhichLicense

Run the following command to install the WhichLicense CLI with [Homebrew]:

```bash
brew install --no-quarantine --cask whichlicense/tap/whichlicense-cli
```

## How to use

To use the WhichLicense CLI check:

```bash
whichlicense --help
```

## macOS specifics

Installing the WhichLicense CLI on macOS Catalina or newer, may give
a warning that "the developer cannot be verified". This check can be
disabled in the "Security & Privacy" preferences pane or by running
the installation command with the following flag:

```bash
brew install --no-quarantine --cask whichlicense/tap/whichlicense-cli
```

[Homebrew]: https://brew.sh
