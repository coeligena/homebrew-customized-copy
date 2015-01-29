cask :v1 => 'ember' do
  version :latest
  sha256 :no_check

  homepage '1.8.3'
  url "http://localhost:8000/Design,%20Photo%20%26%20Video%20Tools%20%26%20Editors/Ember/Ember-#{homepage}.zip"
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ember.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Ember.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Design, Photo & Video Tools & Editors/Ember/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
