class Flutter < Formula
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  version "v1.9.1+hotfix.4"
  url "https://storage.flutter-io.cn/flutter_infra/releases/stable/macos/flutter_macos_v1.9.1+hotfix.4-stable.zip"
  sha256 "9bee10962848b138a0e47764de270123444fae35f6b0dc44615560eff633c634"
  
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
