bash "install_rvm" do
  cwd "#{ENV['HOME']}"
  code "curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=1.9.3 && source ~/.rvm/scripts/rvm"
  creates "~/.rvm"
end
