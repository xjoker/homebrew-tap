class CodexSwitchAT20261001_5_0 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "20261001.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v20261001.5.0/cs-darwin-arm64.tar.gz"
      sha256 "07893fc55e08cb3678d371e29b3e9b142ebcc5288a531d4e3e7344f570b204a3"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v20261001.5.0/cs-darwin-amd64.tar.gz"
      sha256 "0e7a6ebe287796e2138e2e084b82f5f57dbd44935126802dcf777a260b0795e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v20261001.5.0/cs-linux-arm64.tar.gz"
      sha256 "598b05cdfb111d8f9a659771cdcbb12e843810e5f857b1b6caacdb70b813e7e3"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v20261001.5.0/cs-linux-amd64.tar.gz"
      sha256 "591a453366c322f27abd51ec6f54b4224cd2051eab8325807cc99b870c2625ed"
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
