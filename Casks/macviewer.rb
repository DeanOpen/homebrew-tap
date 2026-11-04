cask "macviewer" do
  version "0.3.26"
  sha256 "e6bd40a235716669a42fe10d97a988d53e34b40d4cdbaad70e7cc5de51501223"

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
