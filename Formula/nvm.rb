class Nvm < Formula
  desc "Manage multiple Node.js versions"
  homepage "https://github.com/creationix/nvm"
  url "https://github.com/creationix/nvm/archive/v0.31.4.tar.gz"
  sha256 "e88a804a83c9a1b3363b83d20ac37a893e7207a8b8e8c34880765c4f90d38dd2"
  head "https://github.com/creationix/nvm.git"

  bottle :unneeded

  def install
    prefix.install "nvm.sh", "nvm-exec"
    bash_completion.install "bash_completion" => "nvm"
  end

  def caveats; <<-EOS.undent
    Please note that upstream has asked us to make explicit managing
    nvm via Homebrew is unsupported by them and you should check any
    problems against the standard nvm install method prior to reporting.

    You should create NVM's working directory if it doesn't exist:

      mkdir ~/.nvm

    Add the following to #{shell_profile} or your desired shell
    configuration file:

      export NVM_DIR="$HOME/.nvm"
      . "$(brew --prefix nvm)/nvm.sh"

    You can set $NVM_DIR to any location, but leaving it unchanged from
    #{prefix} will destroy any nvm-installed Node installations
    upon upgrade/reinstall.

    Type `nvm help` for further information.
  EOS
  end

  test do
    output = pipe_output("NODE_VERSION=homebrewtest #{prefix}/nvm-exec 2>&1")
    assert_no_match /No such file or directory/, output
    assert_no_match /nvm: command not found/, output
    assert_match "N/A: version \"N/A\" is not yet installed", output
  end
end
