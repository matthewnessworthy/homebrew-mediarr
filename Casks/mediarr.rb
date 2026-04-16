cask "mediarr" do
  version "0.1.10"
  sha256 "d9b707677990da310b17ae050c581bf5b3225152fdf318964ba8bbac8ef5e4ef"

  url "https://github.com/matthewnessworthy/mediarr/releases/download/v#{version}/Mediarr_#{version}_universal.dmg",
      verified: "github.com/matthewnessworthy/mediarr/"

  name "Mediarr"
  desc "Cross-platform desktop app for renaming and organising media files"
  homepage "https://github.com/matthewnessworthy/mediarr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mediarr.app"

  zap trash: [
    "~/Library/Application Support/com.mediarr.app",
    "~/Library/Caches/com.mediarr.app",
  ]
end
