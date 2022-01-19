class Codeartoken < Formula
  desc "Refresh AWS CodeArtifact token for maven"
  homepage "https://github.com/manojkarthick/codeartoken"
  url "https://github.com/manojkarthick/homebrew-codeartoken/releases/latest/download/codeartoken-mac.tar.gz"
  version "0.1.0"
  sha256 "cb3bd719a3caad55c54b5ac2cd2df7079d7b0b7a14fdb5fc3fabeb8d80c50962"

  def install
    bin.install "codeartoken"
  end
end
