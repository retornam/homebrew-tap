class Gcrane < Formula
  desc "Superset of crane commands with additional commands specific to gcr.io"
  homepage "https://github.com/google/go-containerregistry"
  url "https://github.com/google/go-containerregistry/archive/refs/tags/v0.19.0.tar.gz"
  sha256 "c07dca10f60339d03e3a690daae8512741e9a2bc23c0bcb3104b9892b43179ae"
  license "Apache-2.0"

  depends_on "go" => :build

  def install

    ldflags = %W[
      -s
      -w
      -X
      github.com/google/go-containerregistry/cmd/gcrane/cmd.Version=#{version}
    ]

    system("go", "build", *std_go_args(ldflags: ldflags), "./cmd/gcrane")

    generate_completions_from_executable(bin / "gcrane", "completion")
  end

  test do
    json_output = shell_output("#{bin}/gcrane", "completion")
    manifest = JSON.parse(json_output)
    assert_equal manifest["schemaVersion"], 2
  end
end
