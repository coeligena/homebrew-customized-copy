cask :v1 => 'powerline-fonts' do
  version :latest
  sha256 :no_check

  url 'https://github.com/powerline/fonts/archive/master.zip'
  homepage 'https://github.com/powerline/fonts/'
  license :oss
  
  installer :script => 'fonts-master/install.sh',
            :sudo => false
end
