# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
HOMEBREW_JMERGE_VERSION="1.0.0"
class JmergeCli < Formula
  desc "jmerge-cli can merge multiple json files"
  version "#{HOMEBREW_JMERGE_VERSION}"
  homepage "https://github.com/akubi0w1/jmerge"
  url "https://github.com/akubi0w1/jmerge/releases/download/v#{HOMEBREW_JMERGE_VERSION}/jmerge-cli_#{HOMEBREW_JMERGE_VERSION}_macOS_amd64.tar.gz"
  sha256 "fa3af298ed062c6e83c0f5ce741129a80c413e561f94c9afc01ee9297b4e065e"

  def install
    bin.install "jmerge-cli"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test jmerge-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
