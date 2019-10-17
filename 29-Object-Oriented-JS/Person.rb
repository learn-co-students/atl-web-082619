class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def showInfo
    puts `#{@name} is #{@age} years old!!`
  end
end

john = Person.new('John',56)
dan = Person.new('Dan', 20)
joey = Person.new('Joey', 5)

john.showInfo
