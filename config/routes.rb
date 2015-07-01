Rails.application.routes.draw do

  root 'welcome#index'

  if ENV['ENABLE_RESOURCES']
    resources :directories
    resources :facts
  end

  post 'sms' => 'sms#create'

end
