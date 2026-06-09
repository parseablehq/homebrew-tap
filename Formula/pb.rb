class Pb < Formula
  desc "Command line interface for Parseable"
  homepage "https://github.com/parseablehq/pb"
  license "AGPL-3.0"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/parseablehq/pb/releases/download/v0.7.0/pb_0.7.0_darwin_arm64.tar.gz"
      sha256 "601ff06e8f2a4ebef40be6393ff424dbe54029dd2f0bccd502e69f1687ce56a2"
    end

    on_intel do
      url "https://github.com/parseablehq/pb/releases/download/v0.7.0/pb_0.7.0_darwin_amd64.tar.gz"
      sha256 "a8a044e0bfd1baf33ac3a8a446f4feaffc6ec4a0642eb50f4391e454330d4151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parseablehq/pb/releases/download/v0.7.0/pb_0.7.0_linux_arm64.tar.gz"
      sha256 "bfe44fb30aa7d1861bb8f8dd23988aa454dc4558e7c9fb86507c1705f81fd80a"
    end

    on_intel do
      url "https://github.com/parseablehq/pb/releases/download/v0.7.0/pb_0.7.0_linux_amd64.tar.gz"
      sha256 "0644e6390c775e11c4d11f7a1f95d5ec9e2884ed1306305e1e45de05d0771f2c"
    end
  end

  def install
    bin.install "pb"
  end

  test do
    system "#{bin}/pb", "--help"
  end
end
