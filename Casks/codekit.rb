cask :v1 => 'codekit' do
  version '2.1.9 (18270)'
  sha256 :no_check

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{^.*\((\d+)\)},'\1')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '433feaa40f89043a2cf591145b8d4392d92abee9b84b258d0a3d99833eff4e39'
  homepage 'http://incident57.com/codekit/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CodeKit.app'
end
