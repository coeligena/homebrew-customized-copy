cask :v1 => 'pacifist' do
  if MacOS.release <= :snow_leopard || Hardware::CPU.is_32_bit?
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.release <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.4'
    sha256 :no_check
  end

  homepage '3.5'
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          :sha256 => '1968fd8009efc6192aa5a66e78dd002fb104a34402a22363e2702368f4c1cb64'
  url "http://localhost:8000/Tools%20%26%20Utilities/Pacifist/Pacifist_#{homepage}.zip"
  name 'Pacifist'
  license :commercial

  depends_on :macos => '>= :tiger'

  app 'Pacifist.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Pacifist.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Pacifist/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
