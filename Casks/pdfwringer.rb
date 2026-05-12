cask "pdfwringer" do
  version "0.1.14"
  sha256 "97acf96112ac644972ee4632c0c773cfbd23a97a8c3c80f421cabce3ba0fbae3"

  url "https://github.com/lenpr/PDFwringer/releases/download/v#{version}/PDFwringer.dmg"
  name "PDFwringer"
  desc "Lightweight PDF compression, merging, splitting, rotating, cropping, and editing"
  homepage "https://github.com/lenpr/PDFwringer"

  depends_on macos: ">= :tahoe"

  app "PDFwringer.app"

  postflight do
    system_command "/usr/bin/chflags", args: ["nohidden", "#{appdir}/PDFwringer.app"]
    system_command "/usr/bin/xattr", args: ["-d", "com.apple.FinderInfo", "#{appdir}/PDFwringer.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Caches/com.pdfwringer.app",
    "~/Library/Preferences/com.pdfwringer.app.plist",
  ]
end
