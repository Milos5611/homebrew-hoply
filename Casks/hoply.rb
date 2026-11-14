cask "hoply" do
  version "0.1.6"
  sha256 "a3948efe4e60a8405668b411ff48bbcc59efb6b7584d3a9850aea93142dcfa08"

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
