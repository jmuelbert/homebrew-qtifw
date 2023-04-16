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
  url 'https://download.qt.io/official_releases/qt-installer-framework/4.5.1/installer-framework-opensource-src-4.5.1.tar.xz'
  sha256 '602417a0a2ada5cada8f5b6ad5a160390198b68b46a3721022b7370a971b040a' # DevSkim: ignore DS173237
  version_scheme 1

  head 'https://code.qt.io/cgit/installer-framework/installer-framework.git/'

  depends_on 'qt@5'
  depends_on 'xz' => :build

  def install
    Dir.glob('**/*.pro') do |f|
      inreplace_qt_ifw_pro(f)
    end

    build_and_install_qt_ifw
  end

  def inreplace_qt_ifw_pro(file_path)
    inreplace file_path do |s|
      s.gsub!('$$[QT_INSTALL_LIBS]', '$${PREFIX}/lib', false)
      s.gsub!('$$[QT_INSTALL_BINS]', '$${PREFIX}/bin', false)
    end
  end

  def build_and_install_qt_ifw
    args = qt_ifw_build_args
    mkdir 'build' do
      qt5 = Formula['qt@5'].opt_prefix
      system "#{qt5}/bin/qmake", *args, '../installerfw.pro'
      system 'make', 'install'
    end
  end

  def qt_ifw_build_args
    %W[
      PREFIX=#{prefix}
      IFW_BUILD_TREE=#{buildpath}
      CONFIG+=release
      CONFIG+=libarchive
      CONFIG+=c++11
      INCLUDEPATH+=#{Formula['xz'].opt_prefix}/include
    ]
  end

  test do
    assert_match "binarycreator #{version}", shell_output("#{bin}/binarycreator --version").chomp
  end
end
