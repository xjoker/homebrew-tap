class CodexSwitch < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.2/cs-darwin-arm64.tar.gz"
      sha256 "a4c28f6a78d1d286e5d9450b53cdf6b3e09cec4e9a9c5f57df63aca727fd685b"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.2/cs-darwin-amd64.tar.gz"
      sha256 "7b3c7c4548a91a2f297f9a0724dcd9fdfe78efe3f6329ef25df3c438d3fe546c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.2/cs-linux-arm64.tar.gz"
      sha256 "ba0df944045eb2a4bb3dff803c028f3da34bd2d4393e9ec805a5e0c4ae545be2"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.2/cs-linux-amd64.tar.gz"
      sha256 "129262a3fcefcec5bda8fcb710406b836d618ac1a87270a62883e216837bc5bb"
    end
  end

  def install
    bin.install "codex-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-switch --version")
  end
end
