require './lib/student'

describe Student do
  it '#exists' do
    student = Student.new({name: "Morgan", age: 21})
    expect(student).to be_a Student
  end

  it 'Can show a students name' do
    student = Student.new({name: "Morgan", age: 21})
    expect(student.name).to eq ("Morgan")
  end

  it 'Can show a students age' do
    student = Student.new({name: "Morgan", age: 21})
    expect(student.age).to eq (21)
  end

end
