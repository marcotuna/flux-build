# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FluxBuild < Formula
  desc "Build kustomize overlays with flux2 HelmRelease support"
  homepage "https://github.com/DoodleScheduling/flux-build"
  version "3.0.2"

  on_macos do
    on_intel do
      url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.2/flux-build_3.0.2_darwin_amd64.tar.gz"
      sha256 "21079dd02056a9c02d966caf3565e767946d10481911838669e31952989adde3"

      def install
        bin.install "flux-build"
      end
    end
    on_arm do
      url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.2/flux-build_3.0.2_darwin_arm64.tar.gz"
      sha256 "512fc9872f53aaa349ed29984d00bb588880a394fafa6fa0d2b79d607660397d"

      def install
        bin.install "flux-build"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.2/flux-build_3.0.2_linux_amd64.tar.gz"
        sha256 "7485866602b7c5c47e4dbec3ef3b50dff66cd6065ae95b8dcf023d3805124e0b"

        def install
          bin.install "flux-build"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.2/flux-build_3.0.2_linux_arm64.tar.gz"
        sha256 "fa38f288160c2fbd6b7f0258fff6d550651e56d7ee579abe6876caa494c57024"

        def install
          bin.install "flux-build"
        end
      end
    end
  end

  test do
    system "#{bin}/flux-build -h"
  end
end
