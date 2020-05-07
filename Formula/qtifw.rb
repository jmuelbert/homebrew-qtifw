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

    cd "src/libs/7zip" do
      inreplace "7zip.pro" do |s|
        s.gsub! "$$[QT_INSTALL_LIBS]", lib
      end
    end

       cd "src/libs/installer" do
      inreplace "installer.pro" do |s|
        s.gsub! "$$[QT_INSTALL_LIBS]", lib
      end
    end

    cd "src/sdk" do
      inreplace "sdk.pro" do |s|
        s.gsub! "$$[QT_INSTALL_BINS]", bin
      end
    end

    cd "tools/archivegen" do
      inreplace "archivegen.pro" do |s|
        s.gsub! "$$[QT_INSTALL_BINS]", bin
      end
    end

    cd "tools/binarycreator" do
      inreplace "binarycreator.pro" do |s|
        s.gsub! "$$[QT_INSTALL_BINS]", bin
      end
    end

    cd "tools/repogen" do
      inreplace "repogen.pro" do |s|
        s.gsub! "$$[QT_INSTALL_BINS]", bin
      end
    end

    cd "tools/devtool" do
      inreplace "devtool.pro" do |s|
        s.gsub! "$$[QT_INSTALL_BINS]", bin
      end
    end

    args =  %W[
      PREFIX=#{prefix}
      IFW_BUILD_TREE=#{buildpath}
      CONFIG+=release
    ]

    #mkdir 'build' do
      system 'qmake', *args, './installerfw.pro'
      system 'make', 'install'

    #end
  end

  test do
    assert shell_output("#{bin}/binarycreator --h")
  end
end
