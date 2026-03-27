class CodexSwitchAT0_0_8 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.8/cs-darwin-arm64.tar.gz"
      sha256 "b896cf5b39668f4b53e3b04b475675aeb075a1cc996fe55ce4afdc7a1b19c551"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.8/cs-darwin-amd64.tar.gz"
      sha256 "f5d57bacdb6e55d52ef2a68a77344dd3a86e0c8392fbb4b5f4d4af317916d065"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.8/cs-linux-arm64.tar.gz"
      sha256 "7fe2278570505b57dd9419a43a9c385514996e631ad9cb1e7600e86fd126522b"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.8/cs-linux-amd64.tar.gz"
      sha256 "1dbd5efee60139613cd477d99163ff8f0891b1da5b4938d5df348318e1c74391"
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
