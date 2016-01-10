cask '2do' do
  version :latest
  sha256 :no_check

  homepage '2.0.1'
  url "http://localhost:8000/Office%2C%20Productivity%20%26%20Planning/2Do/2Do%20#{homepage}.dmg"
  license :commercial

  app '2Do.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/2Do.app"
  end
end
