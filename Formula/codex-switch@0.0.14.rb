class CodexSwitchAT0_0_14 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.14/cs-darwin-arm64.tar.gz"
      sha256 "b75ef0f3255f319a97a74beb40de33176e5c8764b0787e370e414e7c0ee115bf"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.14/cs-darwin-amd64.tar.gz"
      sha256 "036896844cb25dc79409ba8beb012f716d62e80d5deab6796abd35c295350db1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.14/cs-linux-arm64.tar.gz"
      sha256 "c04a1ff9b9a2b49d00daf2ba24b2706782829a4ad39356772814126b7f44d0c8"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.14/cs-linux-amd64.tar.gz"
      sha256 "e394b47ff6502de22c6b30f4fd623f8af82af0fc1bc6f596d8c4f5b9c8fb6f1b"
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
