Rails.application.routes.draw do

  root "application#home"

  get "gallerie" => "application#gallerie", :as => :gallerie
  get "options" => "application#options", :as => :options
  get "deborah" => "application#info", :as => :info

end
