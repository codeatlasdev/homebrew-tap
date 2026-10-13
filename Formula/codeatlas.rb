class Codeatlas < Formula
  desc "CLI for the public CodeAtlas API (services catalog)"
  homepage "https://codeatlas.com.br"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-darwin-arm64.tar.gz"
      sha256 "09d15c10fd52e47f83b05de285f1687d2e89c8722392ec818a4c08deb99eeb1a"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-darwin-x64.tar.gz"
      sha256 "2c4407a92e0504accccb29be8161bdc1d3f895d4ff0f29083a6a59d9dcbb0b4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-linux-arm64.tar.gz"
      sha256 "6e4a31a8a2b21be477d972849281a29a450d5be8094c47175ffc8b0d5526154f"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-linux-x64.tar.gz"
      sha256 "e869a20c53facf42ec1eb698168687d232fc1b9783668defb40bbeb121455ee8"
    end
  end

  def install
    bin.install "codeatlas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codeatlas --version")
  end
end
