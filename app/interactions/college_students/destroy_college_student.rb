class DestroyCollegeStudent < ActiveInteraction::Base
  object :college_student

  def execute
    college_student.destroy
  end
end