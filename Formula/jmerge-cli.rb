# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JmergeCli < Formula
  version "v0.1.1"
  desc "jmerge-cli can merge multiple json files"
  homepage "https://github.com/akubi0w1/jmerge"
  url "https://github.com/akubi0w1/jmerge/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fa3af298ed062c6e83c0f5ce741129a80c413e561f94c9afc01ee9297b4e065e"
  license ""

  # depends_on "cmake" => :build
  depends_on "go" => :build

  def install
    print buildpath
    ENV["GOPATH"] = buildpath
    jmerge_path = buildpath/"src/github.com/akubi0w1/jmerge/"
    jmerge_path.install buildpath.children

    cd jmerge_path do
      system "go", "mod", "tidy"
      system "go", "build", "-o", "jmerge-cli/jmerge-cli" "jmerge-cli/main.go"
      bin.install "jmerge-cli/jmerge-cli"
    end
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
