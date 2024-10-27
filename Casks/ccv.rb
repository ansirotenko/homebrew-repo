cask "ccv" do
  on_arm do
    version "0.2.5"
    sha256 "5c19b091f648775b457af93aa618d1a1a5ff4b20571115fe3a3e06673c24f449"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.2.5"
    sha256 "b470b4eb96127d465264964808807eb21c4e8766be432d3d42c8738d8cd83e9b"

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
