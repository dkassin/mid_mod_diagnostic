class Student

  attr_reader :name,
              :age,
              :scores

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @score = []
  end
end
