Rails.application.routes.draw do
  resources :books do
    member do
    get 'edit_by_post/:id', to: 'books#edit_by_post', as: 'edit_by_post'
    end
  get 'books/:id/edit' => 'books#edit', as:'edit_list'
  end

  root 'homes#top'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  get 'book' => 'book#new'

end
