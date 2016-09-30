Rails.application.routes.draw do
  root to: 'admin#index'

  devise_for :teams

  namespace :api do
    resources :standups, except: [:new, :edit] do
      resources :standup_team_members, path: 'team_members', except: [:new, :edit]
    end

    resources :groups, except: [:new, :edit] do
      resources :team_members, except: [:new, :edit]
    end
  end

  resources :standups do
    resources :standup_team_members, path: 'team_members'
  end

  resources :groups do
    resources :team_members
  end
end
