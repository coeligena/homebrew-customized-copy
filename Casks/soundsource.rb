cask 'soundsource' do
  version '3.0'
  sha256 '68686759142bab9384ffde8fcf934655efeed7bc53ab798cecdbe08eb2336b46'

  url "http://sabi.net/nriley/software/soundsource-#{version}.tar.gz"
  name 'SoundSource'
  homepage 'http://sabi.net/nriley/software/#soundsource'
  license :oss
  container :type => :tar

  binary "soundsource-#{version}/soundsource"
end
