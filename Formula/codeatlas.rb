class Codeatlas < Formula
  desc "CLI for the public CodeAtlas API (services catalog)"
  homepage "https://codeatlas.com.br"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v0.1.0/codeatlas-0.1.0-darwin-arm64.tar.gz"
      sha256 "767396937e3fb9eb7ad0feac951f2b87edbb897d021093a827adbc6ffe2858bb"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v0.1.0/codeatlas-0.1.0-darwin-x64.tar.gz"
      sha256 "b00297e859f9119df337a3a93a24158404930385d9eece0075fa534c3dbd2c5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v0.1.0/codeatlas-0.1.0-linux-arm64.tar.gz"
      sha256 "5eb9d0251b129726349d77fb10d0ccc660e46b0152d180c6c8cea031eacd4dca"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v0.1.0/codeatlas-0.1.0-linux-x64.tar.gz"
      sha256 "5986e39c5198e3eabc82c2a2d4d77059d6ed7c54627f4d000840e88222a3da2b"
    end
  end

  def install
    bin.install "codeatlas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codeatlas --version")
  end
end
