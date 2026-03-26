class CodexSwitch < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.4/cs-darwin-arm64.tar.gz"
      sha256 "9f7a1c7c8b46c83e522b5283894e624a3ac74b275886725d03cf42175f75b153"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.4/cs-darwin-amd64.tar.gz"
      sha256 "ce51dae97c8881f115be58c9a9433b565861b1947412c6e865d9583b6bdf7b01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.4/cs-linux-arm64.tar.gz"
      sha256 "fa7ac87b68bfe8846128e0eab0ff4dbafb9794a5448dc3dc2971907f0c735bc2"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.4/cs-linux-amd64.tar.gz"
      sha256 "52f2b98f26b94fdaa48d9b0aa6e144ff6ee8ed945c80bf52d124fb3c3d911dc7"
    end
  end

  def install
    bin.install "codex-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-switch --version")
  end
end
