Rails.application.routes.draw do
  # get "/students", to: "students#index", as: "students" #index
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :courses, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :enrollments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
