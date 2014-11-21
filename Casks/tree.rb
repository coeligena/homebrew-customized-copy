cask :v1 => 'tree' do
  version :latest
  sha256 :no_check

  url 'http://www.topoftree.jp/en/download/Tree.dmg'
  homepage 'http://www.topoftree.jp/en/tree/'
  license :trial

  app 'Tree.app'
end
