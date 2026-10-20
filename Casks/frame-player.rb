cask "frame-player" do
  version "1.29.1"
  sha256 "221bcdbb4896d77600153e48dd95573f8fe4063225d1362b9e415b95be690d0e"

  url "https://github.com/risenxxx/frame-player/releases/download/v#{version}/FramePlayer_#{version}_aarch64.dmg",
      verified: "github.com/risenxxx/frame-player/"
  name "Frame Player"
  desc "Video player built on libmpv: files, links and live torrent streaming"
  homepage "https://github.com/risenxxx/frame-player"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Frame Player.app"

  zap trash: [
    "~/Library/Application Support/app.frameplayer",
    "~/Library/Caches/app.frameplayer",
    "~/Library/HTTPStorages/app.frameplayer",
    "~/Library/Preferences/app.frameplayer.plist",
    "~/Library/Saved Application State/app.frameplayer.savedState",
    "~/Library/WebKit/app.frameplayer",
  ]
end
