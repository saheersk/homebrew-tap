class Lazymongo < Formula
  desc "A fast, keyboard-driven terminal UI for MongoDB"
  homepage "https://github.com/saheersk/lazymongo"
  version "1.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.5/lazymongo_1.2.5_darwin_arm64.tar.gz"
      sha256 "8e2667b705e4fc24d0071b263a1bf7ee066c53194dff9d86c54ead2fafce2290"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.5/lazymongo_1.2.5_darwin_amd64.tar.gz"
      sha256 "6f09774685badac6ee979ec942a9a337923158f69f439fcf812bb8aa4696ef8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.5/lazymongo_1.2.5_linux_arm64.tar.gz"
      sha256 "ae941519ee00e53bed7e124888e0fa974d19dd93c662b1e73813e5e4796a23bb"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.5/lazymongo_1.2.5_linux_amd64.tar.gz"
      sha256 "8aeeb40efd70ec60ec1bba92c4cca8ae7cfdb4e412696e9d05defeccec52f7f5"
    end
  end

  def install
    bin.install "lazymongo"
  end

  test do
    system "#{bin}/lazymongo", "--help"
  end
end
