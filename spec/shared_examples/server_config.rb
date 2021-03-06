shared_examples 'x2go::server::config' do |facts|

  it { is_expected.to contain_file('/etc/sudoers.d/x2goserver').with_ensure('absent') }

  it do
    is_expected.to contain_sudo__conf('x2goserver').with_content('Defaults env_keep +="QT_GRAPHICSSYSTEM"')
  end

end
