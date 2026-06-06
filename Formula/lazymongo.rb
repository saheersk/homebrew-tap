class Lazymongo < Formula
  desc "A fast, keyboard-driven terminal UI for MongoDB"
  homepage "https://github.com/saheersk/lazymongo"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.1/lazymongo_1.2.1_darwin_arm64.tar.gz"
      sha256 "038193de716ed3e6316aca9a31c0b407d8a290066dd051ec3a5ffd1f70c63e4a"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.1/lazymongo_1.2.1_darwin_amd64.tar.gz"
      sha256 "8931be006883baa4696f8efcec3e616271a0060f443ac7168beda3461f92d99c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.1/lazymongo_1.2.1_linux_arm64.tar.gz"
      sha256 "806a0ad6bd4f9c5513288d6277664e0d7e31fc659625c7a1f2e48b7f3edfb7be"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.1/lazymongo_1.2.1_linux_amd64.tar.gz"
      sha256 "3dc8e2005a9a807c182e7860b7babcc6d5e134290c022ad12019e04340d2e061"
    end
  end

  def install
    bin.install "lazymongo"
  end

  test do
    system "#{bin}/lazymongo", "--help"
  end
end
