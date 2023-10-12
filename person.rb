class Person
  # getter and setter in one
  attr_accessor :name, :age

  # getter
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    @parent_permission || of_age?
  end
end

person1 = Person.new(26, 'Nalian')
person1.parent_permission
