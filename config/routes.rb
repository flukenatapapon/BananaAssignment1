Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  resources :photos
  resources :welcome
  resources :posts
  resources :photos

  root 'welcome#index' 

  get '/action_text', to: 'action_text#index', as: 'action_text'
  get '/chat_app', to: 'chat_app#index', as: 'chat_app'
  get '/paperclip', to: 'paperclip#index', as: 'paperclip'
  get '/landingpage', to: 'landing_page#index', as: 'landingpage'

  #room destroy
  get '/destroy_room/:id', to: 'rooms#destroy', as: 'destroy_room'

  #post rountes edit
  get '/posts_index', to: 'posts#index', as: 'posts_index'
  get '/destroy_post/:id', to: 'posts#destroy', as: 'destroy_post'

  #paperclip rountes edit
  get '/destroy_photo/:id', to: 'photos#destroy', as: 'destroy_photos'

  get '/photos_index', to: 'photos#index', as: 'photos_index'
  post '/photos_post_index', to: 'photos#index', as: 'photos_post_index'
  get '/photos_get_new', to: 'photos#new', as: 'photos_get_new'
  post '/photos_post_new', to: 'photos#new', as: 'photos_post_new'

end
