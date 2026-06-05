class Pb < Formula
  desc "Command line interface for Parseable"
  homepage "https://github.com/parseablehq/pb"
  license "AGPL-3.0"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/parseablehq/pb/releases/download/v0.6.0/pb_0.6.0_darwin_arm64.tar.gz"
      sha256 "f14d4c900ab55a4651152f343c57d01beb2fb381d831efb8e159719edebb5ada"
    end

    on_intel do
      url "https://github.com/parseablehq/pb/releases/download/v0.6.0/pb_0.6.0_darwin_amd64.tar.gz"
      sha256 "931c9923cebee218a9fbf2a3114c9271c1997c7fef68e523827efe220961ba1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/parseablehq/pb/releases/download/v0.6.0/pb_0.6.0_linux_arm64.tar.gz"
      sha256 "e591f2526cecf97b667f26394c7bd7129cefb5fe0cba3211f3b33c6ee2894277"
    end

    on_intel do
      url "https://github.com/parseablehq/pb/releases/download/v0.6.0/pb_0.6.0_linux_amd64.tar.gz"
      sha256 "91ea4f246ee4d60507dae00e7f3e5638a350e7de29131b5dd41e28447d6eea90"
    end
  end

  def install
    bin.install "pb"
  end

  test do
    system "#{bin}/pb", "--help"
  end
end
