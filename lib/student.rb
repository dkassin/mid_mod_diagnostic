class Student

  attr_reader :name,
              :age,
              :score

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @score = []
  end

  def log_score(new_score)
    @score.append(new_score)
  end 
end
