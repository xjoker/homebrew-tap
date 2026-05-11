class CodexSwitchAT0_0_17 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.17/cs-darwin-arm64.tar.gz"
      sha256 "e65d60c42648681cd90964e3c91a79d242708645dc58c4da577da0af130762af"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.17/cs-darwin-amd64.tar.gz"
      sha256 "0e723091289c650c992d33ac6ff57029d2ccd0f899031be204b18ae5377d1cf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.17/cs-linux-arm64.tar.gz"
      sha256 "1b9ac978026bdcb77c35993523583224b786301e85282c693b5e958bcfef1d68"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.17/cs-linux-amd64.tar.gz"
      sha256 "b88549207d1c5a68d3cf1f1ad093215b9033f8151d5375cbb56d2f70b1bcb1d1"
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
