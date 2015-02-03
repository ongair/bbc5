Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get "subscription/version"
      get "subscription/subscribers"
    end
  end

end
