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
  
  roster.sort {|student_name, grade| student_name.to_s <=> grade.to_s}

end