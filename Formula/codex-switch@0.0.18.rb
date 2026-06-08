class CodexSwitchAT0_0_18 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.18/cs-darwin-arm64.tar.gz"
      sha256 "2fa531d543a1dd4164c201c07830f13e24bb13ae1c5afdf14353576e485be88d"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.18/cs-darwin-amd64.tar.gz"
      sha256 "5637f5cd01f25bae3a933fc765d6af88dbb84e8252b3334c0dc3449b4d614593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.18/cs-linux-arm64.tar.gz"
      sha256 "61ddf2246c508c5a318b6aa406e0bacd5bed76b68599353c5a0d6f767893d883"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.18/cs-linux-amd64.tar.gz"
      sha256 "30e61e90003b1d77576ab8d5c3a2917e155cbee0263cd364e283a5402548e098"
    end
  end

  keg_only :versioned_formula

  def install
    bin.install "codex-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-switch --version")
  end
end
