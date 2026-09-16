cask "mediarr" do
  version "0.1.13"
  sha256 "2a746b29043b21e57907be2bd9ca3a34490e0476f9f0d329fbd36a0b6e932c1a"

  url "https://github.com/matthewnessworthy/mediarr/releases/download/v#{version}/Mediarr_#{version}_universal.dmg"
  name "Mediarr"
  desc "Cross-platform desktop app for renaming and organising media files"
  homepage "https://github.com/matthewnessworthy/mediarr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Mediarr.app"

  zap trash: [
    "~/Library/Application Support/com.mediarr.app",
    "~/Library/Caches/com.mediarr.app",
  ]
end
