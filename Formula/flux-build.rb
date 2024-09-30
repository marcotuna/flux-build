# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FluxBuild < Formula
  desc "Build kustomize overlays with flux2 HelmRelease support"
  homepage "https://github.com/DoodleScheduling/flux-build"
  version "3.0.5"

  on_macos do
    on_intel do
      url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.5/flux-build_3.0.5_darwin_amd64.tar.gz"
      sha256 "2e6254f67760fe25ddcad6a5b471d4dc05a385cfdb7a7e8537c160c28735b90d"

      def install
        bin.install "flux-build"
      end
    end
    on_arm do
      url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.5/flux-build_3.0.5_darwin_arm64.tar.gz"
      sha256 "5d4143b25925d2f4d80515e9f8343cc5f750ace0633fed7c3f8aa66da1f1a276"

      def install
        bin.install "flux-build"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.5/flux-build_3.0.5_linux_amd64.tar.gz"
        sha256 "9215b330d49bf724dfb76543187893e1e7ac69786521590021a740ef0fdb8eba"

        def install
          bin.install "flux-build"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DoodleScheduling/flux-build/releases/download/v3.0.5/flux-build_3.0.5_linux_arm64.tar.gz"
        sha256 "c6f47b48b45c4b93d2a85af02aee8b1000f47ed79ce3f58ceec918031329698f"

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
