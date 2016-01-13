Rails.application.routes.draw do
  api_version(:module => "V1", :path => {:value => "v1"}, defaults: {:format => :json}, :default => true) do
    resources :classrooms, only: [:create, :update, :show, :index] do
      resources :posts, only: [:create, :update, :show, :index]
    end

    resources :profiles, only: [:create, :update, :show]
  end
end
