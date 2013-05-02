package "hub"
package "ctags-exuberant"

bash "setup_path" do
  home = "#{ENV['HOME']}"
  code <<-EOH
  echo 'export PATH=/usr/local/bin:$PATH' > #{home}/.workstationrc
  EOH
end
