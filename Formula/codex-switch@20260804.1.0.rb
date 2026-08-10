class CodexSwitchAT20260804_1_0 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "20260804.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v20260804.1.0/cs-darwin-arm64.tar.gz"
      sha256 "b89e3d82a300795feaba9aa8e51d1675877f0072bfc44fb4a70a9d05f261bd41"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v20260804.1.0/cs-darwin-amd64.tar.gz"
      sha256 "459c01026ccd46660408c36944b2001ba0337248fdae2c094515410a587ac986"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v20260804.1.0/cs-linux-arm64.tar.gz"
      sha256 "f1b1fd3eb3843d5e1b9eb578d5296eb6938b828c0a34d1aa7b996d0abb6cdbac"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v20260804.1.0/cs-linux-amd64.tar.gz"
      sha256 "649bdaed3c380b60537321c59e5ab5e36959d4aed582fb4f587efacdb81763eb"
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
