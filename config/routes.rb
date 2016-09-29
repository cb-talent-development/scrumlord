Rails.application.routes.draw do
  resources :standups do
    resources :standup_team_members, path: 'team_members'
  end

  resources :groups do
    resources :team_members
  end
end
