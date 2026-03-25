class CodexSwitch < Formula
    desc "Codex account switcher — multi-profile manager with usage dashboard"
    homepage "https://github.com/xjoker/codex-switch"
    version "0.0.1"
    license "MIT"

    on_macos do
      on_arm do
        url
  "https://github.com/xjoker/codex-switch/releases/download/v0.0.1/cs-darwin-arm64.tar.gz"
        sha256 "PLACEHOLDER"
      end
      on_intel do
        url
  "https://github.com/xjoker/codex-switch/releases/download/v0.0.1/cs-darwin-amd64.tar.gz"
        sha256 "PLACEHOLDER"
      end
    end

    on_linux do
      on_arm do
        url
  "https://github.com/xjoker/codex-switch/releases/download/v0.0.1/cs-linux-arm64.tar.gz"
        sha256 "PLACEHOLDER"
      end
      on_intel do
        url
  "https://github.com/xjoker/codex-switch/releases/download/v0.0.1/cs-linux-amd64.tar.gz"
        sha256 "PLACEHOLDER"
      end
    end

    def install
      bin.install "codex-switch"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/codex-switch --version")
    end
  end