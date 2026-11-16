cask "hoply" do
  version "0.1.7"
  sha256 "28a998bb5ed61e4298b6d501c10a4090d43aa7fd486754b75a668397199fc817"

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
