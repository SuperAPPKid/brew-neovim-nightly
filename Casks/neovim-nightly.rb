cask "neovim-nightly" do
  version :latest
  sha256 :no_check
  name "Neovim Nightly"
  homepage "https://neovim.io/"

  if Hardware::CPU.intel?
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-x86_64.tar.gz"
    binary "nvim-macos-x86_64/bin/nvim"
  elsif Hardware::CPU.arm?
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz"
    binary "nvim-macos-arm64/bin/nvim"
  end
end
