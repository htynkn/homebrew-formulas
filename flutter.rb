class Flutter < Formula
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  url "https://storage.flutter-io.cn/flutter_infra/releases/stable/macos/flutter_macos_v1.7.8+hotfix.3-stable.zip"
  sha256 "24703764088b5e89cd8f7e155a8178fc8c3e0cb0d8906667798fe0d41279b7a6"
  
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
