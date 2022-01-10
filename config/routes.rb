Rails.application.routes.draw do
  
  resources :students, only: [:index]
  # resources :students, only: [:show]
  get "/students/grades", to: "students#grades"
  get "/students/highest-grade", to: "students#highest_grade"
end
