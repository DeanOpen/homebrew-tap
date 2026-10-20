cask "macviewer" do
  version "0.3.23"
  sha256 "79148d07d867514f5cb6b8f478976be936b94d3b9fee960aae2f682a11deb0af"

  url "https://github.com/DeanOpen/MacViewer/releases/download/v#{version}/MacViewer-#{version}.dmg"
  name "MacViewer"
  desc "Native client for UltraViewer remote desktop"
  homepage "https://github.com/DeanOpen/MacViewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "MacViewer.app"

  zap trash: [
    "~/Library/Application Support/MacViewer",
    "~/Library/Caches/dev.macviewer.app",
    "~/Library/HTTPStorages/dev.macviewer.app",
    "~/Library/Preferences/dev.macviewer.app.plist",
    "~/Library/Saved Application State/dev.macviewer.app.savedState",
  ]
end
