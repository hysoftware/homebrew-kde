require 'formula'

class Librevenge < Formula
  homepage 'http://sourceforge.net/projects/libwpd/files/librevenge/'
  url 'http://dev-www.libreoffice.org/src/librevenge-0.0.0.tar.bz2'
  sha1 '25159b8d9cd12b50fbe5b3cbe678bd5620a489a8'

  depends_on 'pkg-config' => :build
  depends_on 'boost' => :build
  depends_on 'libtool' => :build
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build

  def install
    puts "to workaround boost 1.55.0 bug, install with --cc=gcc-4.8"
    system "./configure", "--without-docs",
                          "--disable-dependency-tracking",
                          "--enable-static=no",
                          "--disable-werror",
                          "--disable-tests",
                          "--prefix=#{prefix}"
    
    system "make"
    ENV.deparallelize # Needs a serialized install
    system "make install"
  end
end
