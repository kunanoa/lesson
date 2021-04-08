str = String.new("string2")
p str
p "===="

arr = Array.new 3
p arr
p "===="

class Animal
  @@counter = 0
  attr_accessor :name2
  
  def initialize
    p "コンストラクタ"
    @@counter += 1
  end
  
  def name=(value)
    @name = value
  end
  
  def name
    @name
  end
  
  def self.class_variable
    p "クラス変数だよ"
  end
  
  def instant_variable
    p "インスタンス変数だよ"
  end
  
  def self.get_counter
    return @@counter
  end
end

animal = Animal.new()
p animal
p "===="

Animal.class_variable
p "===="

animal.instant_variable
p Animal.get_counter
p "===="

Animal.new
p Animal.get_counter

Animal.new
p Animal.get_counter

animal1 = Animal.new
animal1.name = "AAA"

animal2 = Animal.new
animal2.name = "BBB"

p animal2.name
p animal1.name

animal3 = Animal.new
animal3.name = "CCC"
p animal3.name

class Dog < Animal
  def self.get_counter
    return @@counter -= 2
  end
end

Dog.new
p Dog.get_counter

Animal.new
p Animal.get_counter

Dog.new
p Dog.get_counter
