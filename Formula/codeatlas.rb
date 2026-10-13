class Codeatlas < Formula
  desc "CLI for the public CodeAtlas API (services catalog)"
  homepage "https://codeatlas.com.br"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-darwin-arm64.tar.gz"
      sha256 "3f975b0095a6a147e7d9647f9cf34b6a6d8497c95f5e812066ab425938730d8a"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-darwin-x64.tar.gz"
      sha256 "079971b4e1019a43357e705f227f9c323dec16e34a77b07bfd2836f74dcc8be7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-linux-arm64.tar.gz"
      sha256 "fdbc53a8ab30e56a3022078c527339bfe25d7d38746955a559cc6106f7aff907"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-linux-x64.tar.gz"
      sha256 "9936ae6768543715f178dcdeb4305747a4a28439520be4cad832ea253b749163"
    end
  end

  def install
    bin.install "codeatlas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codeatlas --version")
  end
end
