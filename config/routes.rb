Rails.application.routes.draw do

  root 'welcome#index'

  scope :constraints => lambda{|req| req.remote_addr == ENV['WHITELISTED_IP'] } do
    resources :directories
    resources :facts
  end

  post 'sms' => 'sms#create'

end
