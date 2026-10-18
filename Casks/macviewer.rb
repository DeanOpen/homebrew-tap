cask "macviewer" do
  version "0.3.5"
  sha256 "c0faaffbb9601f6abf83e15cab4d02d5328ae08b101bf9df709163ff70ac1e63"

  url "https://github.com/DeanOpen/MacViewer/releases/download/v#{version}/MacViewer-#{version}.dmg"
  name "MacViewer"
  desc "Native client for UltraViewer remote desktop"
  homepage "https://github.com/DeanOpen/MacViewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacViewer.app"

  zap trash: [
    "~/Library/Application Support/MacViewer",
    "~/Library/Caches/dev.macviewer.app",
    "~/Library/HTTPStorages/dev.macviewer.app",
    "~/Library/Preferences/dev.macviewer.app.plist",
    "~/Library/Saved Application State/dev.macviewer.app.savedState",
  ]
end
