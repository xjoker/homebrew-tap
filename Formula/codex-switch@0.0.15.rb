class CodexSwitchAT0_0_15 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.15/cs-darwin-arm64.tar.gz"
      sha256 "00092624fce0aefaa3c4bcff86915510de65fcbb7f710abd20df119a1ce80f0d"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.15/cs-darwin-amd64.tar.gz"
      sha256 "f16d3a1d5dde5130c1a7f089a2da6ff19d1d02b44a8c058bcd9005740d4ca4f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.15/cs-linux-arm64.tar.gz"
      sha256 "c87dba1c43553683c99418ef14959bf4568ec417ed3af7b0f2d2a10093a6bc68"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.15/cs-linux-amd64.tar.gz"
      sha256 "cab380550109c6c567cda4d54f29ef7e9a7c063e0dfb73d062a669c3c2fad314"
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
