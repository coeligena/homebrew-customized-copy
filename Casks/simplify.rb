cask :v1 => 'simplify' do
  version :latest
  sha256 :no_check

  homepage '3.1.2'
  url "http://localhost:8000/Media%20Players%20%26%20Tools/Simplify/Simplify%20#{homepage}.zip"
  name 'Simplify'
  license :commercial

  app 'Simplify.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Simplify.app"
  end
end
