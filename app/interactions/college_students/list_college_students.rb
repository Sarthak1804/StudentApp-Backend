class ListCollegeStudents < ActiveInteraction::Base
  def execute
    CollegeStudent.all
  end
end