cask "whichlicense-cli" do
    arch arm: "aarch64", intel: "amd64"

    version "0.1.6"

    sha256 arm:   "2eda3bd0996f8d1c0e48b47cc20856132f4e810e33927e25cc5337c182204731",
           intel: "0d132d4639a645d807f607e1ecc90568a16780daa9d70d78030109e315443206"
    
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