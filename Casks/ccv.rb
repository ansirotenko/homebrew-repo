cask "ccv" do
  on_arm do
    version "0.2.7"
    sha256 "923cc745a984e02420086d32c13f58093ac56ae8be4dd077839fc907cebcdbe6"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.2.7"
    sha256 "75d5eb7a9a0c1cd7013e883e809c353c1454688648e1ead65a43769813a75ca1"

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
