class Lazymongo < Formula
  desc "A fast, keyboard-driven terminal UI for MongoDB"
  homepage "https://github.com/saheersk/lazymongo"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_darwin_arm64.tar.gz"
      sha256 "3cc296a4b027f2bd9d030ceb7c9d2397ad58aff070d5e59194facb8d137cdcff"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_darwin_amd64.tar.gz"
      sha256 "717b82541a3e902680fd301ff92994b748cbc44573cbcab4c72acb8dbddf0874"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_linux_arm64.tar.gz"
      sha256 "70776de4a0fab9d825215a03e222c7d2d39121509d301265b310c04876da46cf"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.3.0/lazymongo_1.3.0_linux_amd64.tar.gz"
      sha256 "6b4bf3da0d337e0bb7d6d1dc953734be087af960d4f76135effe15217564680b"
    end
  end

  def install
    bin.install "lazymongo"
  end

  test do
    system "#{bin}/lazymongo", "--help"
  end
end
