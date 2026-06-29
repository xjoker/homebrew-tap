class CodexSwitchAT0_0_19 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.19/cs-darwin-arm64.tar.gz"
      sha256 "2e365dc8273c04ee634d593eeada338a46ba7c7db2a1ca8f5c2aff30aec57a98"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.19/cs-darwin-amd64.tar.gz"
      sha256 "cbc4229285c5e8ea02c9463b7868cd03f2021f5125f5b187ff99e3bebe16e278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.19/cs-linux-arm64.tar.gz"
      sha256 "5db981cc5f1380f3bf9ac2d66484c0cc67d06712e617c2cd0457e3058dcb12b0"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.19/cs-linux-amd64.tar.gz"
      sha256 "3589fdac3d480aea83ab61dd4fb0a7592c018a44415842083df2d5f1d0bb0d2f"
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
