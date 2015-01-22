cask :v1 => 'prey' do
  version '1.3.6'
  sha256 'd6c1c5dac39b0404a194290e4b0e3b975debfd32e174327aa14a345b5a8e8262'

  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  homepage 'https://preyproject.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "prey-mac-#{version}-x64"

  uninstall :pkgutil => 'com.forkhq.prey'
  caveats <<-EOS.undent
    To complete installation, Prey requires an API key. It may be set
    as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
