class Lazymongo < Formula
  desc "A fast, keyboard-driven terminal UI for MongoDB"
  homepage "https://github.com/saheersk/lazymongo"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.0/lazymongo_1.2.0_darwin_arm64.tar.gz"
      sha256 "e758d334c002100befe712584f278c83e0e39113fdc0e1c5b8e5e0a285c4b420"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.0/lazymongo_1.2.0_darwin_amd64.tar.gz"
      sha256 "00da0446524179854060368363520e64fa6a0f4291bb8b5c9516aca8874c63f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.0/lazymongo_1.2.0_linux_arm64.tar.gz"
      sha256 "e847c6e99adecf0ed3b753043e1f74d25f7429025e1e42018e5cc0f03f61901e"
    end
    on_intel do
      url "https://github.com/saheersk/lazymongo/releases/download/v1.2.0/lazymongo_1.2.0_linux_amd64.tar.gz"
      sha256 "f7814fd5b59956704608ad7213f62404bccda2e3f16b854cca84074877cc465e"
    end
  end

  def install
    bin.install "lazymongo"
  end

  test do
    system "#{bin}/lazymongo", "--help"
  end
end
