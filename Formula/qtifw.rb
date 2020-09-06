# frozen_string_literal: true

# Class Qtifw to install
# the QT Installer Framework
# with homebrew
class Qtifw < Formula
  desc 'The Qt Installer Framework'
  homepage 'http://doc.qt.io/qtinstallerframework/'
  version '3.2.2'
  sha256 'd4793b891acaa06938e4bfc5367e024bc132108f819b48da0e8a97feab555ce9'
  url 'http://download.qt.io/official_releases/qt-installer-framework/3.2.2/qt-installer-framework-opensource-src-3.2.2.tar.gz'
  head 'http://code.qt.io/cgit/installer-framework/installer-framework.git/'

  depends_on 'qt' => '5.12'

  def install

    args = %W[
      PREFIX=#{prefix}
      IFW_BUILD_TREE=#{buildpath}
      CONFIG+=release
    ]

    mkdir 'build' do
      system 'qmake', *args, '../installerfw.pro'
      system 'make'
      lib.install '../lib/lib7z.a'
      lib.install '../lib/libinstaller.a'
      bin.install '../bin/archivegen'
      bin.install '../bin/binarycreator'
      bin.install '../bin/repogen'
      bin.install '../bin/devtool'
      bin.install '../tools/build_installer.py'
    end
  end

  test do
    assert shell_output("#{bin}/binarycreator --h")
  end
end
