Rails.application.routes.draw do
  resources :welcome
  resources :posts
  root 'welcome#index' 
  get '/action_text', to: 'action_text#index', as: 'action_text'
  get '/chat_app', to: 'chat_app#index', as: 'chat_app'
  get '/paperclip', to: 'paperclip#index', as: 'paperclip'
  get '/landingpage', to: 'landing_page#index', as: 'landingpage'
  get '/posts_index', to: 'posts#index', as: 'posts_index'

end
