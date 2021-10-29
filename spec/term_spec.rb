require './lib/student'
require './lib/course'
require './lib/term'

describe Term do
  it '#exists' do
    term = Term.new("Winter 2018")

    expect(term).to be_a Term
  end

  it '#Can show term name' do
    term = Term.new("Winter 2018")

    expect(term.name).to eq ("Winter 2018")
  end

  it '#Can show courses in the term' do
    term = Term.new("Winter 2018")

    expect(term.courses).to eq ([])
  end

  it '#Can show students in the term' do
    term = Term.new("Winter 2018")

    expect(term.students).to eq ([])
  end

  it '#Can show open_courses in the term' do
    term = Term.new("Winter 2018")

    expect(term.open_courses).to eq ([])
  end

  it '#Can add courses to term' do
    term = Term.new("Winter 2018")
    course = Course.new("Calculus", 2)
    course1 = Course.new("Coding", 2)
    term.add_course(course)
    term.add_course(course1)

    expect(term.courses).to eq ([course,course1])
  end

  it '#Returns if true if course full' do
    term = Term.new("Winter 2018")
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)
    term.add_course(course)


    expect(term.course_full?(course)).to eq true
  end

  it '#Can check if course is open' do
    term = Term.new("Winter 2018")
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course = Course.new("Calculus", 2)
    course1 = Course.new("Coding", 2)
    course2 = Course.new("Gym", 2)
    term.add_course(course)
    term.add_course(course1)
    term.add_course(course2)

    course2.enroll(student1)
    course2.enroll(student2)

    expect(term.course_open).to eq ([course,course1])

  end

  it '#Can add students to term' do
    term = Term.new("Winter 2018")
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course = Course.new("Calculus", 2)
    course1 = Course.new("Coding", 2)
    course.enroll(student1)
    course1.enroll(student2)
    term.add_course(course)
    term.add_course(course1)
    term.add_students
    expect(term.students).to eq (student1,student2)
  end


end
