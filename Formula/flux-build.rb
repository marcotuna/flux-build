# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FluxBuild < Formula
  desc "Build kustomize overlays with flux2 HelmRelease support"
  homepage "https://github.com/DoodleScheduling/flux-build"
  version "3.0.1"

  on_macos do
    on_intel do
      url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.1/flux-build_3.0.1_darwin_amd64.tar.gz"
      sha256 "886f307e5dc5bd1844e977f4f0461344144db0884654dbc9e291fd5f09f6cdd2"

      def install
        bin.install "flux-build"
      end
    end
    on_arm do
      url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.1/flux-build_3.0.1_darwin_arm64.tar.gz"
      sha256 "1dcb351b8c51441ab8837a16b1cb0a53084a4b8fe344b66169f046e34cf909da"

      def install
        bin.install "flux-build"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.1/flux-build_3.0.1_linux_amd64.tar.gz"
        sha256 "e3a32c2886de38becdfdf247a315857678943a91a43cf33ac2e89a03359c5838"

        def install
          bin.install "flux-build"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.1/flux-build_3.0.1_linux_arm64.tar.gz"
        sha256 "2f1eda2c3990ff8f5513f24adedb7f5e4efd8c21b39eab20c4005e93dfb73820"

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
