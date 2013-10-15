#
# Cookbook Name:: sensu
# Recipe:: default
#

package "erlang" do
  action :install
end

execute "install rabbitmq" do
  command <<-EOS
rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
yum -y install http://www.rabbitmq.com/releases/rabbitmq-server/v3.1.5/rabbitmq-server-3.1.5-1.noarch.rpm
EOS
end
