cask 'tagbak' do
  version :latest
  sha256 :no_check

  url 'https://github.com/ttscoff/tagbak/archive/master.zip'
  homepage 'http://brettterpstra.com/projects/tagbak/'
  license :oss

  binary 'tagbak-master/tagbak'
  binary 'tagbak-master/bookmark'
end
