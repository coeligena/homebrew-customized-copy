cask :v1 => 'paperless' do
  version :latest
  sha256 :no_check

  url "https://marinersoftware.com/mardown/Paperless.dmg"
  homepage 'https://marinersoftware.com/products/paperless/'
  license :commercial

  app 'Paperless.app'
end
