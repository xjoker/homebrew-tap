class CodexSwitchAT0_0_16 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.16/cs-darwin-arm64.tar.gz"
      sha256 "5c08d5b8e566ed2e8468d08845742168dd39213b64dd96eae58c7d372a998d8a"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.16/cs-darwin-amd64.tar.gz"
      sha256 "a6fc5077d556ffc03f1c2be1d3aea5163f284a13fa4e72cdda58ddb1c6da45e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.16/cs-linux-arm64.tar.gz"
      sha256 "7cb35f739053b1865e6444d6e2257d73e69216cfbfb580f0e4ab14a680840ccd"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.16/cs-linux-amd64.tar.gz"
      sha256 "6ebd53e80efafcb19671125d939c9a3eca694bc3bccdf757f6a3ea7f5ec6c257"
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
