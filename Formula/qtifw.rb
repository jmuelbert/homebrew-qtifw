# frozen_string_literal: true

# Class Qtifw to install
# the QT Installer Framework
# with homebrew
class Qtifw < Formula
  desc 'The Qt Installer Framework'
  homepage 'http://doc.qt.io/qtinstallerframework/'
  version '4.2.0x'
  sha256 '542957cb86b856a55521447b2481c7161532bcc45e99e3a5af1e1d42c34b222a'
  url 'https://download.qt.io/official_releases/qt-installer-framework/4.2.0/installer-framework-opensource-src-4.2.0.tar.xz'
  head 'http://code.qt.io/cgit/installer-framework/installer-framework.git/'

  depends_on 'qt' => '5.12.7'

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
