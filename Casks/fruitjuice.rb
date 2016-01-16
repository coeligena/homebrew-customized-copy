cask 'fruitjuice' do
  version :latest
  sha256 :no_check

  homepage '2.2.6'
  url "http://localhost:8000/Tools%20%26%20Utilities/FruitJuice%20Battery%20Health/FruitJuice%20v#{homepage}.zip"
  name 'FruitJuice'
  license :commercial

  app 'FruitJuice.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/FruitJuice.app"
  end
end
