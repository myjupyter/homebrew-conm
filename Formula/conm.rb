class Conm < Formula
  desc "Terminal connection manager for databases and SSH hosts"
  homepage "https://github.com/myjupyter/conm"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/myjupyter/conm/releases/download/v0.1.1/conm_v0.1.1_Darwin_arm64.tar.gz"
      sha256 "28222176f48e0a4394151ce88ee97153c3cb716053cb85737c31a273ce1e0734"
    end
    on_intel do
      url "https://github.com/myjupyter/conm/releases/download/v0.1.1/conm_v0.1.1_Darwin_x86_64.tar.gz"
      sha256 "585e94d400466346c6b8ccea8f0e32460947ecd6b8d2c6195307c8e5b3f4c5c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/myjupyter/conm/releases/download/v0.1.1/conm_v0.1.1_Linux_arm64.tar.gz"
      sha256 "f71e10f0833fb6f60d08b84b10a6a9ba8c6448e06be3a28f235c289ef00b8bfb"
    end
    on_intel do
      url "https://github.com/myjupyter/conm/releases/download/v0.1.1/conm_v0.1.1_Linux_x86_64.tar.gz"
      sha256 "26b7b289ef1e3fa30b24d5c18c26a77de9118955c8acfcaa34419c2c20a6228e"
    end
  end

  def install
    bin.install "conm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/conm --version")
  end
end
