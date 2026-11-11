cask "hoply" do
  version "0.1.1"
  sha256 "19773903c91007745ca829203bea7ba0efcb17854af668badc8c165f1af1a24c"

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
