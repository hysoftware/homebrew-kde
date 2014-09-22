require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Grantlee < BaseKdeFormula
  homepage 'http://grantlee.org/'
  version '0.5.0'
  url 'https://gitorious.org/grantlee/grantlee/archive/b0e24c0cb4c59607c508c3102f05c0bd6815455e.tar.gz'
  sha1 'b1eb1f1e316e02bdc6cca0f2d430aaff0b62b621'

  kde_build_deps
  depends_on 'qt' => ["with-d-bus", "with-qt3support"]
end
