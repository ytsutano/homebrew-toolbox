class Axmldec < Formula
  desc "Stand-alone binary AndroidManifest.xml decoder"
  homepage "https://github.com/ytsutano/axmldec"
  url "https://github.com/ytsutano/axmldec/archive/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "41875f31f83a96788b130663774d07ca50460cabc5e32ef054d1296f73ec30da"

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
