cask :v1 => 'codekit' do
  version '2.4-19051'
  sha256 '358c185cd0c124679ddacc7e941e1bfe9ed80dd3120ec5552ac64cf2ebfcd6f5'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => 'fba4e9552ebabca2b700f6bdcdbb83132856d6c467f536250fc34beed9a8f104'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
