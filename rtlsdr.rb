require 'formula'

class Rtlsdr < Formula
  homepage 'http://sdr.osmocom.org/trac/wiki/rtl-sdr'
  head 'git.osmocom.org/rtl-sdr',
    :shallow => false

  depends_on 'pkg-config' => :build
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'cmake' => :build
  depends_on 'libusb'
  depends_on 'autoconf'
 
  def install
    args = ["--prefix=#{prefix}"]
    system "autoreconf -i"
    system "./configure", *args
    system "make install"
  end
end
