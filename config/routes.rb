MyNotesApi::Application.routes.draw do

  resources :users

  resources :notes

  get "/new_note" => "WebUis#index"

end
