cask "whichlicense-cli" do
    arch arm: "aarch64", intel: "amd64"

    version "0.1.3"

    sha256 arm:   "d753ac604542c7f670c46af2c6d09e0fbda8e6791700b8c4ff8cbab4e32b6919",
           intel: "8aec18dfe678d29db26abb04eaada69e4134c87135d3ae8ebeb2c4231c7fad74"
    
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