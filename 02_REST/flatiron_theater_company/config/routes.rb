Rails.application.routes.draw do
  #resources :productions
  # Custome Route 
  get "/welcome", to: "application#welcome"
  get "/welcome/:name", to: "application#name"

  
  

end
