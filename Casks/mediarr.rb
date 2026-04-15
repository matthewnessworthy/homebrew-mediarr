cask "mediarr" do
  version "0.1.7"
  sha256 "f738fea938086b24a1b25e3cb82c5d52232c3a5182730b89f9de59935d5be309"

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
