cask :v1 => 'flip4mac' do
  version '3.3.4'
  sha256 'f96e824a9bbc30e82be8f593b3ecf50586a3a68ac6e753db1388106d2dc04c97'

  url "http://www.telestream.net/download-files/flip4mac/#{version.sub(%r{\.\d+$},'').sub('.','-')}/Flip4Mac-#{version}.dmg"
  name 'Flip4Mac'
  homepage 'http://www.telestream.net/flip4mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Flip4Mac.pkg'

  uninstall :pkgutil => 'net.telestream.Flip4Mac'
end
