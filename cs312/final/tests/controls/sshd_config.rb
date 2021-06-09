control 'sshd_config' do
  title 'Verifies that the SSH server configuration is hardened'

  describe sshd_config do
    its('X11Forwarding') { should cmp 'no' }
    its('IgnoreRhosts') { should cmp 'yes' } # weak authentication, allows trusting a system just by IP addr
    its('UseDNS') { should cmp 'yes' }
    its('PermitEmptyPasswords') { should cmp 'no' }
    its('MaxAuthTries') { should cmp /\d+/ }
    its('PubkeyAuthentication') { should cmp 'yes' }
    its('PasswordAuthentication') { should cmp 'no' }
    its('PermitRootLogin') { should cmp 'no' }
    its('Protocol') { should cmp '2' }
    its('Port') { should cmp '1234' } # change the port number so it's not the default 22 people expect
    its('ClientAliveInterval') { should cmp '600' } # check if client is present every 10 minutes, close connection if no response is received
    its('ClientAliveCountMax') { should cmp '3' } # send 3 alive messages before timing out
  end
end
