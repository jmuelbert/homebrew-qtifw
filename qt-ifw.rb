
class QtIfw < Formula
  desc "The Qt Installer Framework"
  homepage "http://doc.qt.io/qtinstallerframework/"
  url "http://download.qt.io/official_releases/qt-installer-framework/3.1.1/qt-installer-framework-opensource-src-3.1.1.tar.gz"
  sha256 "59b5370aaf521bb1a34a025ac451bb3bbbfa519ee271156aba9d42ee1132d1b1"
  head="http://code.qt.io/cgit/installer-framework/installer-framework.git/"

  depends_on "qt"

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

    system "qmake", "installerfw.pro", "-r", "-spec", "macx-clang",
                                              "-config", "release",
                                              "PREFIX=#{prefix}"

    system "make", "install"
  end

  test do
    assert shell_output("#{bin}/binarycreator --h")
  end  
end
