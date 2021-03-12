class UpdateCollegeStudent < ActiveInteraction::Base
  object :college_student

  string :name, :email,
         default: nil

  validates :name,
            presence: true,
            unless: -> { name.nil? }
  validates :email,
            presence: true,
            unless: -> { email.nil? }

  def execute
    college_student.name = name if name.present?
    college_student.email = email if email.present?

    unless college_student.save
      errors.merge!(college_student.errors)
    end

    college_student
  end
end