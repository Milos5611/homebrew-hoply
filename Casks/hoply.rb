cask "hoply" do
  version "0.1.2"
  sha256 "313b20db6ef4cb06d1dba0b17ee15e597de1c86a85fccb0c63c4a1afcb8a7dee"

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
