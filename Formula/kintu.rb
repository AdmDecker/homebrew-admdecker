# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kintu < Formula
  desc "Kintu enables developers to save kafka test events in their project repo, emit those events on demand, and randomize specified fields to bypass idempotency checks"
  homepage "https://github.com/AdmDecker/kintu/"
  url "https://github.com/AdmDecker/kintu/releases/download/v0.1.1/kintu-0.1.1.zip"
  sha256 "a736b385860a526bd7f340a1b2e4419e2641010748080d55311f01d7bc74f148"
  license "GPL-3.0-only"

  def install
    inreplace "kintu", "##PREFIX##", "#{prefix}"
    prefix.install "kintu.jar"
    bin.install "kintu"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kintu`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
