cask "ccv" do
  on_arm do
    version "0.2.3"
    sha256 "3aa991b8b5edea30b0fbfcb2e3a45b9f866db3a9cb8c6de5fc3f280e82f61512"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.2.2"
    sha256 "301578d0d20aba553ed62f3f04aa5824300d7856467eed722a6abf438d3e3c4e"

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
