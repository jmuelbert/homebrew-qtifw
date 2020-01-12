# frozen_string_literal: true

# Class QtIFW to install
# the QT Installer Framework
# with homebrew
class QtIfw < Formula
  desc 'The Qt Installer Framework'
  homepage 'http://doc.qt.io/qtinst allerframework/'
  version '3.2.0'
  sha256 '7cd0d7b86fbe63b101f263b6532485df3a2d336cc0026b47eb866dae134e319f'
  url 'http://download.qt.io/official_releases/qt-installer-framework/3.2.0//qt-installer-framework-opensource-src-3.2.0.tar.gz'
  head 'http://code.qt.io/cgit/installer-framework/installer-framework.git/'

  depends_on 'qt'

  def install
    Dir.mkdir 'build'
    Dir.chdir 'build'

    system 'qmake', '-config', 'release', 'PREFIX=/', ''..''
    system 'make', 'qmake_all'
    system 'make'

    # ENV.deparallelize
    instdir = "#{buildpath}/install"
    system 'make', "INSTALL_ROOT=#{instdir}", 'install'
    prefix.install Dir["#{instdir}/*"]
  end

  test do
    assert shell_output("#{bin}/binarycreator --h")
  end
end
