cask "hoply" do
  version "1.2.0"
  sha256 "0f9f8855ab25c81fb751d8b62b4007cde2ef7d18e7bea9ac4d28e178b9aaadda"

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
