class Lazymongo < Formula
  desc "A fast, keyboard-driven terminal UI for MongoDB"
  homepage "https://github.com/saheersk/lazymongo"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_darwin_arm64.tar.gz"
      sha256 "f0a83a6485636e688d0f848296d36ed4fbe780382b6ee4143c447c7e066b81ed"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_darwin_amd64.tar.gz"
      sha256 "2229181d6a3fb9348ef6556a787c45180372431b0623a20489051e96a67b6a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_linux_arm64.tar.gz"
      sha256 "84852b12485e2e7ef94a898fcc08c0741674d42acab00b2b140e364ca805c936"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_linux_amd64.tar.gz"
      sha256 "2b88c504f64650b7d8113187c431b87378757ab873070870a607324da91ab211"
    end
  end

  def install
    bin.install "lazymongo"
  end

  test do
    system "#{bin}/lazymongo", "--help"
  end
end
