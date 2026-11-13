cask "hoply" do
  version "0.1.4"
  sha256 "c7e3e6537f924da8be63837d0a1b883a88d95af3964431fa46b8423b63301170"

  url "https://github.com/Milos5611/homebrew-hoply/releases/download/v#{version}/Hoply-#{version}.dmg"
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
    "~/Library/Preferences/com.coolcraftcoders.hoply.plist",
  ]
end
