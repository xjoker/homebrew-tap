class CodexSwitch < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-darwin-arm64.tar.gz"
      sha256 "454e8f3b17231527ad3deadaf775402e746cd44b9a6033510f1af832ae086e94"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-darwin-amd64.tar.gz"
      sha256 "92d60783d7d877fb2e06f3f975e41069de5674b73c5be4f99e2347fc8676f3c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-linux-arm64.tar.gz"
      sha256 "52d4b02391a0a5665a3b5545b920699cfd524c8e057f1246755ecc3e4e1afa15"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-linux-amd64.tar.gz"
      sha256 "540a2889d51a0b541ba3db04f42e5ab880fab19724f605a13beba74a69a64e8c"
    end
  end

  def install
    bin.install "codex-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-switch --version")
  end
end
