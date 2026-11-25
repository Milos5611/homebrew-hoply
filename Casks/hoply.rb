cask "hoply" do
  version "1.5.0"
  sha256 "9bfac37ec97db200fb373bfe9d2f5699321d56c8df6445564adb411173062a59"

  url "https://github.com/Milos5611/hoply/releases/download/v#{version}/Hoply-#{version}.dmg"
  name "Hoply"
  desc "Menu bar hub for AI coding agents and local model servers"
  homepage "https://hoply.dev"

  livecheck do
    url "https://hoply.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Hoply.app"

  zap trash: [
    "~/Library/Application Support/Hoply",
    "~/Library/Caches/com.coolcraftcoders.hoply",
    "~/Library/HTTPStorages/com.coolcraftcoders.hoply",
    "~/Library/HTTPStorages/com.coolcraftcoders.hoply.binarycookies",
    "~/Library/Preferences/com.coolcraftcoders.hoply.plist",
  ]
end
