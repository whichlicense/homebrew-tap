cask "whichlicense-cli" do
    arch arm: "aarch64", intel: "amd64"

    version "0.0.0"

    sha256 arm:   "dda8d2e1d27ce8166bbe27be7af28b7eb9bb35971a79f6e5f8a0d45003df70ab",
           intel: "f6b107b9677623d2a14810905c145d8a27302a0ffec902adf6b8704d1bc57809"
    
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