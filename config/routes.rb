Rails.application.routes.draw do

  devise_for :users

  root "application#home"

  get "galleries" => "application#galleries", :as => :galleries
  get "options" => "application#options", :as => :options
  get "contact" => "application#contact", :as => :contact

  get "album/:id" => "albums#show", :as => :album

  # ADMIN STUFF

  get "admin" => "admin#dash", :as => :admin
  
  get "admin/new" => "admin#new_album", :as => :new_album
  post "admin/new" => "admin#save_album", :as => :save_album

  get "admin/album/:id" => "admin#edit_album", :as => :edit_album
  post "admin/album/:id" => "admin#update_album", :as => :update_album

  match "admin/archive/:id" => "admin#archive_album", :as => :archive_album, :via => [:get, :post]
  match "admin/publish/:id" => "admin#publish_album", :as => :publish_album, :via => [:get, :post]

  get "admin/album/:id/new" => "admin#new_album_picture", :as => :new_album_picture

  match "admin/album/:id/add" => "admin#add_album_picture", :as => :add_album_picture, :via => [:get, :post]

  match "update" => "admin#update", :as => :update, :via => [:get, :post]

  match "admin/album/:id/delete/:picture_id" => "admin#delete_album_picture", :as => :delete_album_picture, :via => [:get, :post]

end
