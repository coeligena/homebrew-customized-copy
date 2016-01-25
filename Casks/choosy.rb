cask 'choosy' do
  version '1.1'
  sha256 'c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c'

  url "http://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'http://www.choosyosx.com/sparkle/feed',
          :sha256 => '6c9105f7a2d400fb6928a1b0ed2384d098ef016a319b413684723033880d1601'
  name 'Choosy'
  homepage 'http://www.choosyosx.com/'
  license :commercial

  prefpane 'Choosy.prefPane'
end
