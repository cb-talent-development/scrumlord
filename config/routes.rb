Rails.application.routes.draw do
  resources :standups
  resources :standup_team_members
  resources :groups
  resources :team_members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
