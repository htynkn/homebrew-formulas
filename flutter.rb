class Flutter < Formula
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  version "v1.7.8+hotfix.3"
  url "https://storage.flutter-io.cn/flutter_infra/releases/stable/macos/flutter_macos_v1.7.8+hotfix.3-stable.zip"
  sha256 "1bd5d165c79efebfba39e4602d6e07e74b40798630eb7173caedf0f664c53035"
  
  bottle :unneeded

  def install
    allfiles = File.join(buildpath, "**", "{*,.*}")
    mv Dir.glob(allfiles), Dir.glob(prefix), :force => true
  end

  def post_install
    rm File.join(HOMEBREW_PREFIX, "bin", "flutter.bat")
    chmod_R "+rwx", File.join(prefix, "bin"), :verbose => true
  end

  test do
    system "false"
  end
end
