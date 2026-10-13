class Codeatlas < Formula
  desc "CLI for the public CodeAtlas API (services catalog)"
  homepage "https://codeatlas.com.br"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-darwin-arm64.tar.gz"
      sha256 "8e7a5f1950de06a3e4592a2e3a90531812bb575d60f69b3eb45292abedc429f6"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-darwin-x64.tar.gz"
      sha256 "f92bd210cb83085b1f0a6160c5345e191b20f80b690c85aa304ef31e25290fe7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-linux-arm64.tar.gz"
      sha256 "97751412bd0a9eb6c3a474f167a4162b7bc40db1ac57c68f5bcceeb11fb69d50"
    end
    on_intel do
      url "https://github.com/codeatlasdev/codeatlas-sdk-js/releases/download/v#{version}/codeatlas-#{version}-linux-x64.tar.gz"
      sha256 "d051153ebf870dd24c9fb8cbfcb7ea9aaaca0cca727ce5fd49f9d84dc343961e"
    end
  end

  def install
    bin.install "codeatlas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codeatlas --version")
  end
end
