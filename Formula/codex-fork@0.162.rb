class CodexForkAT0162 < Formula
  desc "Codex CLI with Russell Parks' worktree, authentication, and telemetry patches"
  homepage "https://github.com/russell-parks/codex"
  url "https://github.com/russell-parks/codex/releases/download/fork-v0.162.1/codex-package-aarch64-apple-darwin.tar.gz"
  version "0.162.1"
  sha256 "9e94de95dabfd881ba34d6f6cbf013b3418bfe92bc9c13a77aac9ad51d8150fc"
  license "Apache-2.0"

  keg_only :versioned_formula

  depends_on arch: :arm64
  depends_on :macos

  def install
    libexec.install "bin", "codex-package.json", "codex-path", "codex-resources"
    bin.write_exec_script libexec/"bin/codex"
  end

  test do
    assert_match "codex-cli #{version}", shell_output("#{bin}/codex --version")
    assert_match "--worktree-name", shell_output("#{bin}/codex --help")
    assert_match "telemetry", shell_output("#{bin}/codex telemetry --help")
    assert_path_exists libexec/"codex-package.json"
    assert_path_exists libexec/"bin/codex-code-mode-host"
    assert_predicate libexec/"codex-path/rg", :executable?
  end
end
