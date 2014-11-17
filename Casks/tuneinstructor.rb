# encoding: UTF-8
cask :v1 => 'tuneinstructor' do
  version '3.4'
  sha256 '2acf8252e78edbe4594136bad83f035ab48e78db1f4c2b2d8e047d3e70c90c12'

  url "http://www.tune-instructor.de/_data/TuneInstructor#{version}b.dmg"
  homepage 'http://www.tune-instructor.de/com/start.html'
  license :unknown

  app 'Tune•Instructor.app'
end
