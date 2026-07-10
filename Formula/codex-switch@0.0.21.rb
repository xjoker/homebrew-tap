class CodexSwitchAT0_0_21 < Formula
  desc "Codex account switcher — multi-profile manager with usage dashboard"
  homepage "https://github.com/xjoker/codex-switch"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.21/cs-darwin-arm64.tar.gz"
      sha256 "37f03e5557898ec0f5ce6f523128dfdee90e1a02a63868b990f1011746ee29da"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.21/cs-darwin-amd64.tar.gz"
      sha256 "de09b982beb0e87e1d4c4506280a63cfd547bc7fa9cab1e56d646ad3f904d225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.21/cs-linux-arm64.tar.gz"
      sha256 "f20fed2ea264991a997453038343380f77cef6338e00909328541d331f5ba4fe"
    end
    on_intel do
      url "https://github.com/xjoker/codex-switch/releases/download/v0.0.21/cs-linux-amd64.tar.gz"
      sha256 "81a5a7e685c35afd5d7835021f7c376807ace909a9e56a51b54617e39f814be7"
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
