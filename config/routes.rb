Rails.application.routes.draw do

  root "application#home"

  get "galleries" => "application#galleries", :as => :galleries
  get "options" => "application#options", :as => :options
  get "contact" => "application#contact", :as => :contact

  get "album/:id" => "albums#show", :as => :album

end
