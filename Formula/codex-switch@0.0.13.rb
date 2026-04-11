class CodexSwitchAT0_0_13 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.13/cs-darwin-arm64.tar.gz"
      sha256 "ede5a25e77fc933787548caf9ed7fb9d2319805188b1756c6b8bba71ad0d9633"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.13/cs-darwin-amd64.tar.gz"
      sha256 "7c2d8e555aaa9f2d0b1bdff700ee18c0948ebd8580881d645f403fe3e989aaf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.13/cs-linux-arm64.tar.gz"
      sha256 "2aa67b561c494bf3dee2fefedd5121646858e247e22335bcf6d50d0fb2a3260d"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.13/cs-linux-amd64.tar.gz"
      sha256 "9e55669b6cf4ec7f6b08e75bf5cb1b5f82292adf4eb3193fe14aee0cf2466f36"
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
