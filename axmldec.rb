class Axmldec < Formula
  desc "Stand-alone binary AndroidManifest.xml decoder"
  homepage "https://github.com/ytsutano/axmldec"
  url "https://github.com/ytsutano/axmldec/archive/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "556590e00bd36b3ede9ced4d4793429a874fb382e35ac80ffcc621a6574a7b80"

  depends_on "cmake" => :build
  depends_on "boost" => "c++11"

  head do
    url "https://github.com/ytsutano/axmldec.git"
  end

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/axmldec", "--help"
  end
end
