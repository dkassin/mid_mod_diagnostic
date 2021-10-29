require './lib/student'
require './lib/course'


class Term

  attr_reader :name,
              :courses,
              :students,
              :open_courses

  def initialize(name)
    @name = name
    @courses = []
    @students = []
    @open_courses = []
  end

  def add_course(course)
    @courses << course
  end

  def course_full?(course)
    course.full?
  end

  def course_open
      @courses.each do |course|
        if course_full?(course) == false
          @open_courses << course
        end
      end
      @open_courses
  end

  def add_students
    @courses.each do |course|
      course.each do |student|
        @students << student
    end
    @students
  end


end
