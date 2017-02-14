#
# Cookbook Name:: learn_chef_apache2
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

#remote_file '/var/www/html/sample.jar' do
#  source 'https://artifacts.alfresco.com/nexus/content/groups/public/ORG/springframework/spring-context/4.1.7.RELEASE/spring-context-4.1.7.RELEASE.jar'
#end
