class GoModUpgrade < Formula
  desc "go-mod-upgrade"
  homepage "https://github.com/oligot/go-mod-upgrade/releases"
  url(
    "https://github.com/oligot/go-mod-upgrade.git",
    tag: "v0.10.0",
    revision: "b738e47383b91fedcb67494e5b8b28ac5b10e800"
  )
  head "https://github.com/oligot/go-mod-upgrade.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    env_vars = {"CGO_ENABLED" => "0"}
    cmd = "go build -ldflags='-s -w -X main.version=0.10.0' ."
    full_cmd = env_vars.map { |k, v| "#{k}=#{v}" }.join(" ") + " " + cmd
    system(full_cmd)
    bin.install("go-mod-upgrade")
  end

  test do
    assert_predicate bin / "go-mod-uograde", :exist?
    system "go-mod-upgrade", "--help"
  end
end
