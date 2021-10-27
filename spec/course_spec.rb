require './lib/student'
require './lib/course'

describe Course do
  it '#exists' do
    course = Course.new("Calculus", 2)

    expect(course).to be_a Course
  end

  it 'Can show course name' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq ("Calculus")
  end

  it 'Can show course capacity' do
    course = Course.new("Calculus", 2)

    expect(course.capacity).to eq (2)
  end

  it 'Can show students in class' do
    course = Course.new("Calculus", 2)

    expect(course.students).to eq ([])
  end

  it 'Can show if a class is full' do
    course = Course.new("Calculus", 2)

    expect(course.full?).to eq (false)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)

    expect(course.full?).to eq (true)
  end

  it 'Can add students to a course' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)
    expect(course.students).to eq ([student1, student2])
  end

end
