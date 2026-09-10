class Domh < Formula
  desc "Bulk domain availability checker with Brazilian market support and AI agent workflow"
  homepage "https://github.com/codeatlasdev/domain-hunter"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeatlasdev/domain-hunter/releases/download/v#{version}/domain-hunter_darwin_arm64.tar.gz"
      sha256 "8ca6ff730d833723a103ce4ba26c7a588132089aed8a0d9f162c570c90c8a8ba"
    end
    on_intel do
      url "https://github.com/codeatlasdev/domain-hunter/releases/download/v#{version}/domain-hunter_darwin_amd64.tar.gz"
      sha256 "55f1cc924ebdbffc14e5a65553a5aebb05fa42ca6cc5d0f3af643de4f1b159c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codeatlasdev/domain-hunter/releases/download/v#{version}/domain-hunter_linux_arm64.tar.gz"
      sha256 "02c81b689327b9bb2c6e05a323a28c1eb53fb5f63858169aa0dab2a09d0c3caa"
    end
    on_intel do
      url "https://github.com/codeatlasdev/domain-hunter/releases/download/v#{version}/domain-hunter_linux_amd64.tar.gz"
      sha256 "f35e5e8e1a90c5c2e7a07d8af041c8dd4a4dc0b7142aaf40858851fcea009699"
    end
  end

  def install
    bin.install "domh"
  end

  def caveats
    <<~EOS
      Install the agent skill and configure MCP:
        domh skills

      Then ask your agent:
        "find a 4-letter SaaS name, check brazil and global-saas presets"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/domh version")
  end
end
