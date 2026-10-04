cask "frame-player" do
  version "1.27.0"
  sha256 "dcde16d40920de1f3b49e91c80b928b8b2cd18d76869cdd7ce0bc16edc51f459"

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
