cask "rewrite-better" do
  version "1.0.8"
  sha256 "7542b3443124460146bc8afb2985a46b750da0f6b4340c9e60a243ab4042b21a"

  url "https://github.com/cvthang56th2/rewrite-better/releases/download/v#{version}/RewriteBetter-#{version}.dmg"
  name "Rewrite Better"
  desc "Rewrite, format, and reply from the macOS menu bar"
  homepage "https://rewrite-better-ai.vercel.app/"

  depends_on macos: :ventura

  app "RewriteBetter.app"

  zap trash: [
    "~/Library/Preferences/com.rewritebetter.macos.plist",
  ]

  caveats <<~EOS
    macOS may block the first open because this build is not notarized.
    Right-click Rewrite Better in Applications and choose Open.
    Grant Accessibility when asked so Rewrite Better can read the text you select.
  EOS
end
