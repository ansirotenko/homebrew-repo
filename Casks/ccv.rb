cask "ccv" do
  on_arm do
    version "0.2.6"
    sha256 "b5d7ef84636d044f8f4844314e44e15e9972e504392f5238e6ca1ad566fe23f8"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.2.6"
    sha256 "8e757ff4895b2391a614ad2ffe4f827c98e8269924260d0ffec86273eb0be51d"

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
