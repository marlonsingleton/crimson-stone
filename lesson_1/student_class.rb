
class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self_grade
    private_grade
  end

  def better_grade_than?(classmate)
    if self_grade > classmate.self_grade
      return true
    else
      return false
    end
  end

  private

  def private_grade
    @grade
  end


end

joe = Student.new("Joe", 96)
bob = Student.new("Bob", 90)
puts "Well done!" if joe.better_grade_than?(bob)
#The opposite isn't true therefore puts doesn't execute.
puts "Well done!" if bob.better_grade_than?(joe)
