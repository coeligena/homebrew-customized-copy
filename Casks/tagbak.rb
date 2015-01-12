cask :v1 => 'tagbak' do
  version :latest
  sha256 :no_check

  url 'https://github.com/ttscoff/tagbak/zipball/master'
  homepage 'http://brettterpstra.com/projects/tagbak/'
  license :oss

  binary 'tagbak'
  binary 'bookmark'
end
