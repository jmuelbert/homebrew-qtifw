# frozen_string_literal: true

# Class Qtifw to install
# the QT Installer Framework
# with homebrew
class Qtifw < Formula
  desc 'The Qt Installer Framework'
  homepage 'http://doc.qt.io/qtinstallerframework/'
  version '4.0.1x'
  sha256 'ef04180c2779b781754fb198ad55b190c199baa27ee18ba09970959a6a6bdc22'
  url 'http://download.qt.io/official_releases/qt-installer-framework/4.0.1/qt-installer-framework-4.0.1.tar'
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
