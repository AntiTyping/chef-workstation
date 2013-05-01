bash "link_vimrc" do
  cwd "#{ENV['HOME']}"
  code <<-EOH
  git clone git://github.com/dracco/vim-config.git .vim &&
  cd #{ENV['HOME']}/.vim &&
  git submodule update --init &&
  ln -sf ~/.vim/vimrc ~/.vimrc
  EOH
  creates "~/.vimrc"
  not_if do
    File.exists?("#{ENV['HOME']}/.vim")
  end
end
