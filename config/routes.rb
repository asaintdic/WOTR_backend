Rails.application.routes.draw do
  
  
  
  resources :workouts do
    resources :exercises
  end
 
  resources :exercises, only: [:destroy]

  # resources :workout_exercises
 
 
  #   resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
