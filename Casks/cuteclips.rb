cask :v1 => 'cuteclips' do
  version :latest
  sha256 :no_check

  url 'http://cuteclips3.com/CuteClips3.dmg'
  homepage 'http://cuteclips3.com'
  license :commercial

  app 'CuteClips3.app', :target => 'CuteClips 3.app'
end
