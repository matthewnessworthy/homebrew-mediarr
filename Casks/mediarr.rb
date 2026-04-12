cask "mediarr" do
  version "0.1.6"
  sha256 "d9614c6ac154c1a519f3e26a029e338123942f268b29bda2342f3f2e1d9eaff2"

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
