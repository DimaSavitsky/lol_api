Rails.application.routes.draw do

  Rails.application.routes.draw do
    devise_for :user, controllers: {
      sessions: 'user/sessions',
      registrations: 'user/registrations'
    }
  end

  resource :home, only: [:show]

  resource :api_request, only: [] do
    member do
      get :status

    end

  end

  root to: 'homes#show'
end
