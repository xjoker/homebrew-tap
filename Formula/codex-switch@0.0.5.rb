class CodexSwitchAT0_0_5 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-darwin-arm64.tar.gz"
      sha256 "d33783bdf5c9f00245451ecfb88849fcfed8fac7d8e586d9e021d21e5fcd30ba"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-darwin-amd64.tar.gz"
      sha256 "2a565dab034043c3c420dd9d1226b221071b1176c3e43e8b090c6dedbfaf4b36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-linux-arm64.tar.gz"
      sha256 "92128828765048ff9aec4b243408755fcd7a2eb8ba913be24c1051a6583fc78e"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.5/cs-linux-amd64.tar.gz"
      sha256 "ad56fd3e871772b9f528536817c7ee574d9a7c0d102a5acf32c0f2c701a6d21e"
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
