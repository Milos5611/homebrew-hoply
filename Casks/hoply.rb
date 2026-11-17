cask "hoply" do
  version "0.1.9"
  sha256 "ffc30800f6625d7167c5d17f33dd1415ae127c11db2e3ce45553b37d802142f0"

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
