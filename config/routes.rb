ActsAsCinemaExampleRails3::Application.routes.draw do
  resources :videos
  root :to => "videos#index"
end
