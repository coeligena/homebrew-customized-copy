cask :v1 => 'codekit' do
  version '2.2-18493'
  sha256 '6d5939ebefe6f980662284dd5c33ab7b889312fc07e8289a2763682ca8a36ea2'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '433feaa40f89043a2cf591145b8d4392d92abee9b84b258d0a3d99833eff4e39'
<<<<<<< HEAD
  homepage 'https://incident57.com/codekit/'
=======
  name 'CodeKit'
  homepage 'http://incident57.com/codekit/'
>>>>>>> c6440d1cdaded24f38c69500abe67e5b42e61746
  license :commercial

  app 'CodeKit.app'
end
