# frozen_string_literal: true

# Class QtIFW to install
# the QT Installer Framework
# with homebrew
class Qtifw < Formula
  desc 'The Qt Installer Framework'
  homepage 'http://doc.qt.io/qtinstallerframework/'
  version '3.2.2'
  sha256 'd4793b891acaa06938e4bfc5367e024bc132108f819b48da0e8a97feab555ce9'
  url 'http://download.qt.io/official_releases/qt-installer-framework/3.2.2/qt-installer-framework-opensource-src-3.2.2.tar.gz'
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
