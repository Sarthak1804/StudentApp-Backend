class CreateCollegeStudent < ActiveInteraction::Base
  string :name, :email
  validates :name, :email, presence: true
  def to_model
    CollegeStudent.new
  end

  def execute
    college_student = CollegeStudent.new(inputs)

    unless college_student.save
      errors.merge!(college_student.errors)
    end
    college_student
  end
end