class CodexSwitchAT0_0_20 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.20/cs-darwin-arm64.tar.gz"
      sha256 "20d1e3fd8a1935300381bd08362816731cda646265db33e11e4e417c116627a9"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.20/cs-darwin-amd64.tar.gz"
      sha256 "91ba19dbc5cf80587ffe2a66fb2daaf579dabdb780ac2106e1816f3c8891807d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.20/cs-linux-arm64.tar.gz"
      sha256 "51c85d67cb2255409aa6b6f85c22608729501e1926948bb85bbf6f22553fa42f"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.20/cs-linux-amd64.tar.gz"
      sha256 "cd33480da9ce4b77556140b8ece325ada40afd936a5936fc0bfc3d6dd3a810bc"
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
