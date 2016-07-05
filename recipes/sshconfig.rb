file = '/etc/ssh/sshd_config'
file_bak ='/etc/ssh/sshd_config_bak'
bash 'sshd_bakup' do
 code <<-EOH
  sudo -S cp #{file} #{file_bak}
  sudo -S sed -i "" "s/#PasswordAuthentication yes/PasswordAuthentication yes/g" "#{file}"
  sudo -S sed -i "" "s/PasswordAuthentication no/PasswordAuthentication yes/g" "#{file}"
  sudo -S sed -i "" "s/#PasswordAuthentication no/PasswordAuthentication yes/g" "#{file}"
   EOH
end



