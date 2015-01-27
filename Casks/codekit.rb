cask :v1 => 'codekit' do
  version '2.2 (18493)'
  sha256 '6d5939ebefe6f980662284dd5c33ab7b889312fc07e8289a2763682ca8a36ea2'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{^.*\((\d+)\)},'\1')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '433feaa40f89043a2cf591145b8d4392d92abee9b84b258d0a3d99833eff4e39'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
