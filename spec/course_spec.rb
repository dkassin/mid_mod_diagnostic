require './lib/student'
require './lib/course'

describe Course do
  it '#exists' do
    course = Course.new("Calculus", 2)
    expect(course).to be_a Course
  end
end
