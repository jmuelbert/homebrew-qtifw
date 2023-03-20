#
# SPDX-FileCopyrightText: 2021 Jürgen Mülbert <juergen.muelbert@gmail.com>
#
# SPDX-License-Identifier: EUPL-1.2
#
# frozen_string_literal: true

# Class Qtifw to install
# the QT Installer Framework
# with homebrew
class Qtifw < Formula
  desc 'The Qt Installer Framework'
  homepage 'https://doc.qt.io/qtinstallerframework/'
  version '4.5.1'
  sha256 '602417a0a2ada5cada8f5b6ad5a160390198b68b46a3721022b7370a971b040a'
  url 'https://download.qt.io/official_releases/qt-installer-framework/4.5.1/installer-framework-opensource-src-4.5.1.tar.xz'
  head 'https://code.qt.io/cgit/installer-framework/installer-framework.git/'

  depends_on 'qt@5'
  depends_on 'xz' => :build

  def install
    Dir.glob('**/*.pro') do |f|
      inreplace f do |s|
        s.gsub!('$$[QT_INSTALL_LIBS]', '$${PREFIX}/lib', false)
        s.gsub!('$$[QT_INSTALL_BINS]', '$${PREFIX}/bin', false)
      end
    end

    args = %W[
      PREFIX=#{prefix}
      IFW_BUILD_TREE=#{buildpath}
      CONFIG+=release
      CONFIG+=libarchive
      INCLUDEPATH+=#{Formula['xz'].include}
    ]

    mkdir 'build' do
      qt5 = Formula['qt@5'].opt_prefix
      system "#{qt5}/bin/qmake", *args, '../installerfw.pro'
      system 'make', 'install'
    end
  end

  test do
    assert shell_output("#{bin}/binarycreator --h")
  end
end
