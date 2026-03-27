class CodexSwitchAT0_0_7 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.7/cs-darwin-arm64.tar.gz"
      sha256 "4414e58d531278cd0f13ff79ede11ccba66f862d9e77dbb5ab8f179262e4b50e"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.7/cs-darwin-amd64.tar.gz"
      sha256 "23a19bdc0138ee541079d44219027d33dfed7971cca56fdb061e9342e10c5f8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.7/cs-linux-arm64.tar.gz"
      sha256 "0e646b340b4cdf449364fc3909fd21d09e257e35cb8ada19b0e59ae17a96b936"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.7/cs-linux-amd64.tar.gz"
      sha256 "79960b806d71ea91036c7c2f276cfbab4ec380357819c19d2020604a892fa908"
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
