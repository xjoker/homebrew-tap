class CodexSwitchAT0_0_10 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.10/cs-darwin-arm64.tar.gz"
      sha256 "aeee7466a488c181ad9d4d75b89dc16b7526cd6406dfc9075500f75a7c9f501b"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.10/cs-darwin-amd64.tar.gz"
      sha256 "3113b5f848e2f11f50de7288bcfc83665f0817b71edac3e67a64521ed44fdd06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.10/cs-linux-arm64.tar.gz"
      sha256 "80e61d82623d32b592524c8011be35cefd2e18af66997e437ac17903f96e2e0f"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.10/cs-linux-amd64.tar.gz"
      sha256 "036c3d30508651d548d4caf6b759c3489711efcf90b471e7941a27e3270712cb"
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
