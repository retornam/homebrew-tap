class Gcrane < Formula
  desc "Superset of crane commands with additional commands specific to gcr.io"
  homepage "https://github.com/google/go-containerregistry"
  url "https://github.com/google/go-containerregistry/releases/download/v0.20.2/go-containerregistry-0.20.2.tar.gz"
  sha256 "afd8c6e9e4c768f7767a2ab3a385879bb1e4421836965e32f8b49356b4d181f0"
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
