class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    abjectives = ['Ancient' , 'Broken' , 'Creative' , 'Dangerrous' , 'Effective' , 'Flying' , 'Gilded']
    nouns = ['Highway' , 'Intern' , 'Jackhammer' , 'Lion' , 'Master']
    number = rand.to_s[2..4]
    username = "#{abjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
  

end
