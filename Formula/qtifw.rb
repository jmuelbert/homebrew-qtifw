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
  desc "Qt Installer Framework Installer"
  homepage "https://doc.qt.io/qtinstallerframework/"
  url "https://download.qt.io/official_releases/qt-installer-framework/4.5.2/installer-framework-opensource-src-4.5.2.tar.xz"
  sha256 "f815a1a230963f0fe7c3c2b0a9b559d5d7cadbaa4404ff8a2bd6c6eb74d89aca" # DevSkim: ignore DS173237
  version_scheme 1

  head "https://code.qt.io/cgit/installer-framework/installer-framework.git/"

  depends_on "xz" => :build
  depends_on "qt@5"

  version = "4.5.2-1"

  def install
    Dir.glob("**/*.pro") do |f|
      inreplace_qt_ifw_pro(f)
    end

    build_and_install_qt_ifw
  end

  private

  def inreplace_qt_ifw_pro(file_path)
    inreplace file_path do |s|
      s.gsub!("$$[QT_INSTALL_LIBS]", "$${PREFIX}/lib", false)
      s.gsub!("$$[QT_INSTALL_BINS]", "$${PREFIX}/bin", false)
    end
  end

  def build_and_install_qt_ifw
    args = qt_ifw_build_args
    mkdir "build" do
      qt5 = Formula["qt@5"].opt_prefix
      system "#{qt5}/bin/qmake", *args, "../installerfw.pro"
      system "make", "install"
    end
  end

  def qt_ifw_build_args
    %W[
      PREFIX=#{prefix}
      IFW_BUILD_TREE=#{buildpath}
      CONFIG+=release
      CONFIG+=libarchive
      CONFIG+=c++11
      INCLUDEPATH+=#{Formula["xz"].opt_prefix}/include
    ]
  end

  test do
    assert_match "archivegen #{version}", shell_output("#{bin}/archivegen --version").chomp
  end
end
