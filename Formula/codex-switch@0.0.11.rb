class CodexSwitchAT0_0_11 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.11/cs-darwin-arm64.tar.gz"
      sha256 "4c96a1c823338d38633b9f423c95fbd32b19fa26692407509584784d9b7b131b"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.11/cs-darwin-amd64.tar.gz"
      sha256 "53f22186f138e8fe99ab16ac7bc4e3a77be3652e085c680704e07329d758e891"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.11/cs-linux-arm64.tar.gz"
      sha256 "8f0182ce8486ee5fa761ff695eb970710ca84adf94db21302e89a576d4b97725"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.11/cs-linux-amd64.tar.gz"
      sha256 "b99d106a49acf31c7a3010b8239e6b941927cece9f30aee6c881701056739966"
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
