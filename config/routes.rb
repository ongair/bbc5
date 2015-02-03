Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get "subscription/version"
      get "subscription/subscribers"

      post "subscription/sms" => "subscription#sms_subscribers"
    end
  end

end
