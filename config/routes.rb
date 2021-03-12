Rails.application.routes.draw do
  get "/college_students/search", to: "college_students#search"
  resources :college_students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
