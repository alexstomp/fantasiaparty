Rails.application.routes.draw do

  root "application#home"

  get "galleries" => "application#galleries", :as => :galleries
  get "options" => "application#options", :as => :options
  get "deborah" => "application#info", :as => :info

  get "album/:id" => "albums#show", :as => :album

end
