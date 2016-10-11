##Animal is-a object look at the extra credit
class Animal

end

##make a class named Dog that is-a Animal
class Dog < Animal
  def initialize(name)
    ##set an instance @name of the class Dog to name parameter
    @name = name
  end
end

##make a class named Cat that is-a Animal
class Cat < Animal
  def initialize(name)
    ##set an instance @name of the class Cat to name paramenter
    @name = name
  end
end

##make a class named Person
class Person

  def initialize(name)
    ##set an instance @name of the class Person to name paramenter
    @name = name

    ##Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

##make a class named Employee that is-a Person
class Employee < Person

  def initialize(name, salary)
    ## get name from class Person
    ##Employee class inherit attribute from the parent class Person
    super(name)

    ## set an instance @salary of the class Employee to salary paramenter
    @salary = salary
  end
end

class Fish
end

## make a class named Salmon that is-a Fish
class Salmon < Fish
end

##make a class named Halibut that is-a Fish
class Halibut < Fish
end

##rover is-a Dog
rover = Dog.new("Rover")

##Satan is-a Cat
satan = Cat.new("Satan")

##Mary is-a Person
mary = Person.new("Mary")

##from Mary get pet attribute and set it to satan
mary.pet = satan

##set frank to an instance of class Employee and assign values 'Frank' and 120000
frank = Employee.new("Frank", 120000)

##from frank get pet attribute and set it to rover
frank.pet = rover

##set flipper to an instance of class Fish
flipper = Fish.new()

##set crouse to an instance of class Salmon
crouse = Salmon.new()

##set harry to an instance of class Halibut
harry = Halibut.new()
