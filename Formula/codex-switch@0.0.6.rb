class CodexSwitchAT0_0_6 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.6/cs-darwin-arm64.tar.gz"
      sha256 "3b71c55196a5f0431f0668782d88b5c6c67a911dcd4a536f3a9c042bb0fd4f39"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.6/cs-darwin-amd64.tar.gz"
      sha256 "5ef67c1af04a729c30212c84ba07b4dc22788bd09417edc9965c9e876c937240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.6/cs-linux-arm64.tar.gz"
      sha256 "947593db218f7b22ef74ae4128a1b02cb55567572f5c34e0889dd8ed3016cdbb"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.6/cs-linux-amd64.tar.gz"
      sha256 "066c60c513758772df5a46ddd896ef80588adfd2585097a667807e3dcd3f36f1"
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
