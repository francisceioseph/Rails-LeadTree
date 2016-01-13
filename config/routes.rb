Rails.application.routes.draw do
  api_version(:module => "V1", :path => {:value => "v1"}, defaults: {:format => :json}, :default => true) do
    resources :profiles, only: [:create, :update, :show]
  end
end
