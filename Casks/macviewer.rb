cask "macviewer" do
  version "0.3.17"
  sha256 "2fe2205e71f1b26a4f3018e98b02bc91e833b12e75da470dba2866467ac685a1"

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
