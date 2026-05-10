cask "pdfwringer" do
  version "0.1.13"
  sha256 "PLACEHOLDER"

  url "https://github.com/lenpr/PDFwringer/releases/download/v#{version}/PDFwringer.dmg"
  name "PDFwringer"
  desc "Lightweight PDF compression, merging, splitting, rotating, cropping, and editing"
  homepage "https://github.com/lenpr/PDFwringer"

  depends_on macos: ">= :tahoe"

  app "PDFwringer.app"

  zap trash: [
    "~/Library/Caches/com.pdfwringer.app",
    "~/Library/Preferences/com.pdfwringer.app.plist",
  ]
end
