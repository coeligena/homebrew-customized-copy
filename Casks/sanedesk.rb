cask :v1 => 'sanedesk' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/SaneDesk/sanedesk2.zip'
  homepage 'http://sanedeskapp.com'
  license :trial

  app 'SaneDesk.app'
end
