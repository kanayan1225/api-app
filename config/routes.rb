Rails.application.routes.draw do
  root "books#search"

  resources :books do
    collection do
      get 'search'
    end
  end

end