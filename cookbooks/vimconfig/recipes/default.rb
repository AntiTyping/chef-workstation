bash "link_vimrc" do
  cwd "#{ENV['HOME']}"
  code "ln -sf ~/projects/vim-config/vimrc ~/.vimrc"
  creates "~/.vimrv"
end
