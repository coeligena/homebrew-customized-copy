class Littlesnapper < Cask
  version :latest
  sha256 :no_check
  
  url 'http://help.realmacsoftware.com/hc/en-gb/article_attachments/200330722/littlesnapper_185_new.zip'
  homepage 'http://help.realmacsoftware.com/hc/en-us/articles/200159952-Upgrade-from-LittleSnapper-to-Ember'
  license :trial
  
  app 'LittleSnapper.app'
end
