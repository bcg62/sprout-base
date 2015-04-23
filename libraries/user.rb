case node['platform_family']
when 'mac_os_x'
  raise "sudo to root before running" if ENV['SUDO_USER'].nil?
  raise "should not be root" if ENV['SUDO_USER'].strip == "root"
end
