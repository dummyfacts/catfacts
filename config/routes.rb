Rails.application.routes.draw do

  root 'welcome#index'

  if ENV['ENABLE_RESOURCES']
    resources :directories
    resources :facts
  end

  if ENV['ENABLE_SMS_ROUTE']
    post 'sms' => 'sms#create'
  end

end
