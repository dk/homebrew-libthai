class Libthai < Formula
  desc "LibThai is a set of Thai language support routines aimed to ease
developers' tasks to incorporate Thai language support in their
applications."
  homepage "https://linux.thai.net/projects/libthai/"
  url "https://github.com/tlwg/libthai/releases/download/v0.1.29/libthai-0.1.29.tar.xz"
  sha256 "fc80cc7dcb50e11302b417cebd24f2d30a8b987292e77e003267b9100d0f4bcd"
  depends_on "libdatrie" => :build
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--disable-debug",
                           "--prefix=#{prefix}",
                           "--enable-shared"
    system "make install-am"
    system "make install-strip"
  end

  test do
    system "false"
  end
end
