class Par < Formula
  desc "Superset of crane commands with additional commands specific to gcr.io"
  homepage "http://www.nicemice.net/par/"
  url "https://github.com/retornam/par.git",
        tag:      "1.53.0",
        revision: "eb0590f6bafc4f9e44a5ad7e0baadc29c69e79e7"
  head "https://github.com/retornam/par.git", branch: "main"

  uses_from_macos "make" => :build


  def install
    system ('cd  #{cached_download}')
    system('make -f protoMakefile CC="cc -c" LINK1="cc" LINK2="-o" RM="rm" JUNK="" $*')
    bin.install "par"
    man1.install "par.1"

  end

end
