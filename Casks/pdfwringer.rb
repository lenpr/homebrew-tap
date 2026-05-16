cask "pdfwringer" do
  version "0.1.16"
  sha256 "69d36d21df47ba7e849692318fc3cfa311cb14f16b9879c87de16d5f2a776dca"

  url "https://github.com/lenpr/PDFwringer/releases/download/v#{version}/PDFwringer.dmg"
  name "PDFwringer"
  desc "Lightweight PDF compression, merging, splitting, rotating, cropping, and editing"
  homepage "https://github.com/lenpr/PDFwringer"

  depends_on macos: ">= :tahoe"

  app "PDFwringer.app"

  postflight do
    system_command "/usr/bin/chflags", args: ["nohidden", "#{appdir}/PDFwringer.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Caches/com.pdfwringer.app",
    "~/Library/Preferences/com.pdfwringer.app.plist",
  ]
end
