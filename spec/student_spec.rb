require './lib/student'

describe Student do
  it '#exists' do
    student = Student.new({name: "Morgan", age: 21})
    expect(student).to be_a Student
  end

  it "Can show a student's name" do
    student = Student.new({name: "Morgan", age: 21})
    expect(student.name).to eq ("Morgan")
  end

  it "Can show a student's age do" do
    student = Student.new({name: "Morgan", age: 21})
    expect(student.age).to eq (21)
  end

  it "Can show a student's score" do
    student = Student.new({name: "Morgan", age: 21})
    expect(student.scores).to eq ([])
  end

  it "Can log a students score with log_score method" do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    expect(student.scores).to eq ([89,78])
  end

  it "Show average of all elements in score variable" do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    expect(student.grade).to eq (83.5)
  end

end
