cask "hoply" do
  version "0.1.3"
  sha256 "85979fb122b90ec5813d35b2f01839e1d2e65bd09a70538f292fb69d09726c67"

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
