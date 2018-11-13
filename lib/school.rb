class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
      roster[grade] << student_name
  end
  
  def grade(student_grade)
   return roster[student_grade]
  end
  
  def sort_student(student_name)
    student_name.sort_by { |roster| roster[:student_name]}
  end
end