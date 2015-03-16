cask :v1 => 'snapselect' do
  version :latest
  sha256 :no_check

  url 'https://s3-us-west-2.amazonaws.com/snapselect/Snapselect_NA_Distribution.dmg'
  name 'Snapselect'
  homepage 'http://macphun.com/snapselect'
  license :commercial

  app 'Snapselect.app'
end
