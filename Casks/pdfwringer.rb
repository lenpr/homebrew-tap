cask "pdfwringer" do
  version "0.1.13"
  sha256 "521d8f424f005cbee122f6e913a4c0d4f7ecc7aa2a9aa138015fc916b1895b02"

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
