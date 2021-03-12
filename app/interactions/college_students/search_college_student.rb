class SearchCollegeStudent < ActiveInteraction::Base
  string :email

  def execute
    CollegeStudent.where("email LIKE ?", "%#{email}%")
  end
end