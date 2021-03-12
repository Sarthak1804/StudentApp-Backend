class FindCollegeStudent < ActiveInteraction::Base
  integer :id

  def execute
    college_student = CollegeStudent.find_by_id(id)

    if college_student
      college_student
    else
      errors.add(:id, 'does not exist')
    end
  end
end