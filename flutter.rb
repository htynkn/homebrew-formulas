class Flutter < Formula
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  url "https://storage.flutter-io.cn/flutter_infra/releases/beta/macos/flutter_macos_v0.8.2-beta.zip"

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
