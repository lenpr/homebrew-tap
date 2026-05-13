cask "pdfwringer" do
  version "0.1.15"
  sha256 "a407d949a5428a7957e7ae9c3984ef26d629972f5ae104dcbdc130b30dadc347"

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
