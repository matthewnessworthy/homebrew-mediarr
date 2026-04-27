cask "mediarr" do
  version "0.1.12"
  sha256 "87dc133871b10f3b97fa9ebffb38e373f6a9d7083705acde9eb18566191e523b"

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
