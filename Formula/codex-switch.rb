class CodexSwitch < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.3/cs-darwin-arm64.tar.gz"
      sha256 "3b5c31953370f679910967804d82f9f7877c31c35fd343dd58ea7718de888997"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.3/cs-darwin-amd64.tar.gz"
      sha256 "dd8ad8b34d883af2df663057c0faafe3ad0dc9923167dc332621c3eae0f7fdc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.3/cs-linux-arm64.tar.gz"
      sha256 "373ed59e4da082c064ea0fb973b8fef0c0f7daa95d5562efaeb79cd71e331b0c"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.3/cs-linux-amd64.tar.gz"
      sha256 "c6b2d5610133656fa0a73c7edc7cd860f5d9561ed3331d67e4e4fb237d3b7ed7"
    end
  end

  def install
    bin.install "codex-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-switch --version")
  end
end
