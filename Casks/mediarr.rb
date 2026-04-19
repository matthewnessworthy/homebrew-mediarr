cask "mediarr" do
  version "0.1.11"
  sha256 "537dc53f15a51470ac8df5f84ac91edbeb3e3df4531bdddd3c2b053258107e6c"

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
