cask "whichlicense-cli" do
    arch arm: "aarch64", intel: "amd64"

    version "0.2.0"

    sha256 arm:   "805b6fb3ff185c8142437c38af932dd81c38c06edfc2be5eb9437af9e2436967",
           intel: "22336cf01cabbc77c2e119763d1a078b102d5d160bbf39548ae27cf0b8ec72b4"
    
    url "https://github.com/whichlicense/cli/releases/download/v#{version}/whichlicense-darwin-#{arch}"
    name "WhichLicense CLI #{version}"
    desc "The WhichLicense platform CLI"
    homepage "https://whichlicense.com"

    depends_on macos: ">= :mojave"
    container type: :naked
    binary "whichlicense-darwin-#{arch}", target: "whichlicense"

    caveats <<~EOS
        Installing the WhichLicense CLI on macOS Catalina or newer, may give
        a warning that "the developer cannot be verified". This check can be
        disabled in the "Security & Privacy" preferences pane or by running
        the installation command with the following flag:
            brew install --no-quarantine --cask whichlicense/tap/whichlicense
    EOS
end