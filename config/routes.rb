MyNotesApi::Application.routes.draw do

  resources :users, except: :index

  resources :notes

  get "/new_note" => "WebUis#index"

end
