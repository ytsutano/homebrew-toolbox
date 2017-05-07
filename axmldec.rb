class Axmldec < Formula
  desc "Stand-alone binary AndroidManifest.xml decoder"
  homepage "https://github.com/ytsutano/axmldec"
  url "https://github.com/ytsutano/axmldec.git", :tag => "v1.2.0"
  version "1.2.0"

  depends_on "cmake" => :build
  depends_on "boost" => "c++11"
  depends_on "zlib"

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
