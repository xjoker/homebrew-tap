class CodexSwitchAT0_0_12 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.12/cs-darwin-arm64.tar.gz"
      sha256 "dcd4176e108baf31528d754f0b132a89c16608b0d90cf06ec33356765a553559"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.12/cs-darwin-amd64.tar.gz"
      sha256 "e704bb0075bcd8439ec5be956d8e155a66caa4ecdede8a4143a4ed2c6508fc84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.12/cs-linux-arm64.tar.gz"
      sha256 "13e1d47387aeea63b7acfcfbc4bbb27c9979d50bbea0393ea4e60b902168b718"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.12/cs-linux-amd64.tar.gz"
      sha256 "a55bd915b19c0bfa06e0ab04a33b4a451d60b4d216a36dc1bdaefb012364486d"
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
