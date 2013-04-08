bash "link_dotfiles" do
  cwd "#{ENV['HOME']}"
  code "ln -sf ~/projects/dotfiles/.gitconfig ~/.gitconfig"
  creates "~/.gitconfig"
end
