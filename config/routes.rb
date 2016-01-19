Rails.application.routes.draw do
  devise_for :users
  root to: 'v1/home#index'

  api_version(:module => "V1", :path => {:value => "v1"}, defaults: {:format => :json}, :default => true) do
    resources :home, only: [:index]
    resources :awards
    resources :award_controller
    resources :question_answers
    resources :exercise_answers

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
