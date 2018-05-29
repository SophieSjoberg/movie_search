Rails.application.routes.draw do
  post :search, controller: :movie_search, action: :search
  root controller: :movie_search, action: :index
end
