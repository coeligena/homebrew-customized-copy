cask :v1 => 'voodoohda' do
  version '2.8.8'
  sha256 '9df9ac1c861e8126dbb8ec4246261db85f484047f60d2a7b33e18f996b37326d'
  
  url "http://www.hackintoshosx.com/files/getdownload/12972-voodoohda/"
  homepage 'http://www.hackintoshosx.com/tags/downloads/RealtekHDA/'
  license :oss
  
  pkg "VoodooHDA-v#{version}.pkg"
end
