class People

  attr_accessor :name
  
  def initialize
    puts "Peopleのインスタンスが作られました"
    @name
  end
  
  def self.whoami
    puts "私はPeopleクラスです"
  end    
end


class ChildPeople < People

  def self.beam
    puts "私は目からビームが出せます"
  end
end