#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


git '/D' do
  repository 'https://github.com/chef-cookbooks/mysql'
  
  action :export
end
