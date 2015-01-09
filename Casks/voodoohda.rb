cask :v1 => 'voodoohda' do
  version '2.8.8'
  sha256 'c29e4d0ef0fba46287d2972c5671c92f6289fd5831c8d0b40eff9c112dae9a71'
  
  url "http://www.hackintoshosx.com/files/getdownload/12972-voodoohda/"
  homepage 'http://www.hackintoshosx.com/tags/downloads/RealtekHDA/'
  license :oss
  
  pkg "VoodooHDA-v#{version}.pkg"
end
