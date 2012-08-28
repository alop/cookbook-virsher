#
# Cookbook Name:: virsher
# Recipe:: default
#


cookbook_file node['virsher']['file_path'] do
  source "virt-check.py"
  mode    "0544"
end

cron "virsher" do
  minute  "0"
  command node['virsher']['file_path']
end

