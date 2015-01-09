cask :v1 => 'voodoohda' do
  version '2.8.8'
  sha256 'c42a9517f26b1096448b5103db4ceead1d8a73b9b9279b4673638d97393dfc7f'
  
  url "http://www.hackintoshosx.com/files/getdownload/12972-voodoohda/"
  homepage 'http://www.hackintoshosx.com/tags/downloads/RealtekHDA/'
  license :oss
  
  pkg "VoodooHDA-v#{version}.pkg"
end
