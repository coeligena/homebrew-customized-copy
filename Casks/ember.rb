cask 'ember' do
  version :latest
  sha256 :no_check

  homepage '1.8.3'
  appcast 'http://realmacsoftware.com/feeds/ember.xml',
          :sha256 => '37fd752918a4a295e9bf07a2b4634a61bac1f07123585a4a35c8ec988ac354c1'
  name 'Ember'
  url "http://localhost:8000/Design,%20Photo%20%26%20Video%20Tools%20%26%20Editors/Ember/Ember-#{homepage}.zip"
  appcast 'http://www.realmacsoftware.com/feeds/ember.xml',
          :sha256 => '5e37758cec9f0dd8b619f8cc40a257bd1ac1635fd1b2d28e0bd651bf2864dd6d'
  #homepage 'http://realmacsoftware.com/ember'
  license :commercial

  app 'Ember.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Ember.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Design, Photo & Video Tools & Editors/Ember/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
