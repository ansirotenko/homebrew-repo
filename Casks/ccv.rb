cask "ccv" do
  on_arm do
    version "0.2.2"
    sha256 "f9fbc51fe4f1488cd422813120bd6dd52c5cf9eb98037b307b35a0444a83cf53"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.2.2"
    sha256 "86cc3a3a0c12995376afc0c197a14e87c9cc174b950204cc2a476b24f02dcae1"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_x64.dmg"
  end

  name "ccv"
  desc "Clipboard history manager for Text, Rtf, Html, Images and Files"
  homepage "https://github.com/ansirotenko/ccv/"

  depends_on macos: ">= :high_sierra"

  app "ccv.app"

  zap trash: [
    "~/Library/Application Support/com.ansirotenko.ccv",
    "~/Library/Logs/com.ansirotenko.ccv",
  ]
end
