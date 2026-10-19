cask "macviewer" do
  version "0.3.19"
  sha256 "f812c5520c86c867915171544ac1ef24e0b6e51cb06139a99d147bacb38910cd"

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
