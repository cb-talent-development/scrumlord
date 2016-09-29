Rails.application.routes.draw do
  root to: 'admin#index'

  devise_for :teams

  resources :standups, except: [:new, :edit] do
    resources :standup_team_members, path: 'team_members', except: [:new, :edit]
  end

  resources :groups, except: [:new, :edit] do
    resources :team_members, except: [:new, :edit]
  end
end
