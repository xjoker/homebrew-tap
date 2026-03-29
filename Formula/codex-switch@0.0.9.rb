class CodexSwitchAT0_0_9 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.9/cs-darwin-arm64.tar.gz"
      sha256 "cdf616b398ecb428e63dffca31abe4a17d36db31f6cf96c84519d17b50cdfaa2"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.9/cs-darwin-amd64.tar.gz"
      sha256 "b7a49234d7a87ee108176055c2d959a8df6e2e1b57bd6ce72d96da159a4e14ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.9/cs-linux-arm64.tar.gz"
      sha256 "81acf54b40cc6d9192f80fd9cac37317ade700778b6ef9063b8f0f83a3665b3f"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.9/cs-linux-amd64.tar.gz"
      sha256 "ee42f10150645546d6bf8f92bf1d1f6595c7330af77c1ec1e1b35d27597a6d4f"
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
