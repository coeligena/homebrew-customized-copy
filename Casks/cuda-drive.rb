cask :v1 => 'cuda-drive' do
  version :latest
  sha256 :no_check

  url 'https://copy.com/install/mac/CudaDrive.dmg'
  name 'CudaDrive'
  homepage 'https://www.cudadrive.com/page/download;section:main'
  license :gratis

  installer :manual => 'Install CudaDrive.app'
end
