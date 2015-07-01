Rails.application.routes.draw do

  root 'welcome#index'

  post 'sms' => 'sms#create'

end
