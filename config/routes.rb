Rails.application.routes.draw do
  api_version(:module => "V1", :path => {:value => "v1"}, defaults: {:format => :json}, :default => true) do

    resources :exercise_lists, only: [:create, :update, :show, :index] do
      resources :questions, only: [:create, :update, :show, :index] do
        resources :options, only: [:create, :update, :show, :index]
      end
    end

    resources :classrooms, only: [:create, :update, :show, :index] do
      resources :posts, only: [:create, :update, :show, :index] do
        resources :comments, only: [:create, :update, :show, :index]
      end
    end

    resources :profiles, only: [:create, :update, :show]
  end
end
