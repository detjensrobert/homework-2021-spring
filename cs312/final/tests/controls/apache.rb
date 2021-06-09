control 'apache' do
  title 'Verifies that Apache site configuration is hardened'

  service_name = os.redhat? ? 'httpd' : 'apache2'

  only_if 'apache is not running' do
    service(service_name).running?
  end

  describe service(service_name) do
    it { should be_enabled }
    it { should be_running }
  end

  describe.one do
    # is service is running as non-root
    describe command("systemctl cat #{service_name}") do
      its('stdout') { should match(/User=.+/) }
      its('stdout') { should_not match(/User=root/) }
    end

    # or does apache drop privs itself
    describe apache_conf do
      its('User') { should cmp(/.+/) }
      its('User') { should_not cmp 'root' }
      its('Group') { should cmp(/.+/) }
      its('Group') { should_not cmp 'root' }
    end
  end

  # conf_path = os.redhat? ? '/etc/httpd/conf/httpd.conf' : '/etc/apache2/apache2.conf'

  describe apache_conf do
    its('ServerTokens') { should cmp 'Prod' }
    its('ServerSignature') { should cmp 'Off' }
    its('FileETag') { should cmp 'None' }
    its('TraceEnable') { should cmp 'Off' }
  end

  # check modules
  describe command('apachectl -M') do
    its('stdout') { should match /mod_security/ }
    its('stdout') { should match /mod_evasive/ }
  end
end
