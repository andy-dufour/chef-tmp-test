#
# Cookbook:: tmp-test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

original_temp = ENV['TEMP'] || '/tmp'

directory "#{ENV['HOME']}/downloads"

set_temp original_temp

remote_file '/root/chef-server-core-12.16.14-1.el7.x86_64.rpm' do
  source 'https://packages.chef.io/files/stable/chef-server/12.16.14/el/7/chef-server-core-12.16.14-1.el7.x86_64.rpm'
end

set_temp original_temp
