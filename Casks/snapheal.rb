cask :v1 => 'snapheal' do
  version '2.5'
  sha256 'd600c7679931065243c11b1d6fdb2a498be4ae1f904bf0b2a256b676796ac4c7'
  
  url "https://s3-eu-west-1.amazonaws.com/snapheal/SnaphealNA_v#{version.gsub('.','_')}.dmg"
  appcast 'https://s3-eu-west-1.amazonaws.com/snapheal/'
  homepage 'http://macphun.com/eu/snapheal'
  license :trial
  
  app 'Snapheal.app'
end
