Rails.application.routes.draw do
  root 'welcome#index' 
  get '/action_text', to: 'action_text#index', as: 'action_text'
  get '/chat_app', to: 'chat_app#index', as: 'chat_app'
  get '/paperclip', to: 'paperclip#index', as: 'paperclip'

end
