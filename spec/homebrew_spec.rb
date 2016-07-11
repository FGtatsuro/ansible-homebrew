require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

['/usr/local', '/usr/local/bin'].each do |f|
  describe file(f) do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'travis' }
    it { should be_owned_by 'admin' }
  end
end

describe command('brew --version') do
  its(:exit_status) { should eq 0 }
end

describe package('gawk') do
  it { should be_installed.by('homebrew') }
end

describe package('iterm2') do
  it { should be_installed.by('homebrew_cask') }
end
