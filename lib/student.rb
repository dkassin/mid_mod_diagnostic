class Student

  attr_reader :name,
              :age,
              :scores

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @scores = []
  end

  def log_score(new_score)
    @scores.append(new_score)
  end

  def grade
    @scores.sum.to_f / @scores.count
  end
end
