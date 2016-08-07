# want to be able to check if user has youtube-dl installed on their system. If not, install this dependency
# automatically run $make install after the repo has been downloaded
class SplitVideo < Formula
  desc "Tool to download and split videos"
  homepage "github.com/seyonv/split_video"
  url "https://github.com/seyonv/split_video/archive/1.0.0.tar.gz"
  sha1 ""

  def install
    # system "make", "PREFIX=#{prefix}"
    system "./configure", "--prefix=#{prefix}"
    system "make","all"

  end

end



# REMOVE COMMENTED LINES AFTER BREW INSTALL ACTUALLY INSTALLS INTO CELLAR
# want to be able to check if user has youtube-dl installed on their system. If not, install this dependency
# automatically run $make install after the repo has been downloaded
# class SplitVideo < Formula
#   desc "Tool to download and split videos"
#   homepage "github.com/seyonv/split_video"
#   url "https://github.com/seyonv/split_video/archive/1.0.0.tar.gz"
#   version "1.0.0"
#   sha256 "dc2e74634959a978deb62476813f07cbe49f33af4fbd4ddc4c96bb97161516a7"

#   def install
#     # system "make", "all"
#     system "make", "clean"
#   end

#   # have an exception raise here that if installation empty error is raised that you want to specifically


#   # probably want a depends on youtube-dl dependency here

#   # literally define a series of tests for the script right here
#   # see test_sv.sh as reference for the test(s) to define. port this to local system afterwards as well
#   test do
#     # `test do` will create, run in and delete a temporary directory.
#     #
#     # This test will fail and we won't accept that! It's enough to just replace
#     # "false" with the main program this formula installs, but it'd be nice if you
#     # were more thorough. Run the test with `brew test split_video`. Options passed
#     # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
#     #
#     # The installed folder is not in the path, so use the entire path to any
#     # executables being tested: `system "#{bin}/program", "do", "something"`.
#     system "false"
#   end
# end
