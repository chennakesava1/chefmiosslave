maven_settings_dir = "#{ENV['HOME']}/.m2"

maven_settings = "#{maven_settings_dir}/settings.xml"
maven_settings_sorece = "#{node.default['maven']['settings_source']}"

maven_Settings_Security = "#{maven_settings_dir}/settings-security.xml"
maven_Settings_Security_source ="#{node.default['maven']['maven_Settings_Security_source']}"

maven_maveneventspyclient_destination_dir = "#{node.default['maven']['extract_path']}/lib/ext"
maven_maveneventspyclient_destination = "#{node.default['maven']['maveneventspyclient_destination']}"
maven_maveneventspyclient_sorce = "#{node.default['maven']['maveneventspyclient_sorce']}"

maven_eventspyclientconfig_source = "#{node.default['maven']['eventspyclientconfig_source']}"
maven_eventspyclientconfig_destination = "#{node.default['maven']['eventspyclientconfig_destination']}"



bash 'extract_module_maven' do
  code <<-EOH
  mkdir -p "#{node.default['maven']['extract_path']}"
  tar xzvf "#{node.default['maven']['source']}" -C "#{node.default['maven']['extract_path']}"
  EOH
not_if { File.exist?("#{node.default['maven']['extract_path']}/apache-maven*") }
end

remote_file maven_settings do
source "#{maven_settings_sorece}"
not_if {::File.exists?(maven_settings)}
end

remote_file maven_Settings_Security do
source maven_Settings_Security_source
not_if {::File.exists?(maven_Settings_Security)}
end

directory "#{maven_maveneventspyclient_destination_dir}" do
  recursive true
  owner 'pamber'
 end

remote_file maven_maveneventspyclient_destination do
source maven_maveneventspyclient_sorce
not_if {::File.exists?(maven_maveneventspyclient_destination)}
end

remote_file maven_eventspyclientconfig_destination do
source maven_eventspyclientconfig_source
not_if {::File.exists?(maven_eventspyclientconfig_destination)}
end
