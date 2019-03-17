Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, except: [:delete]
  resources :school_classes, except: [:delete]

  # #index
  #   get '/students', to:"students#index"
  #
  #
  # #show
  #   get 'students/:id', to:"students#show"
  # #new
  #   get 'students/new', to:"students#new"
  #
  # #create
  #   post 'students/:id', to:"students#create"
  #
  # #edit
  #
  #   get 'students/:id/edit', to:"students#edit"
  #
  # #update
  #   patch 'students/:id', to:"students#update"
  #
  # #index
  #
  #   get '/school_classes', to:"school_classes#index"
  #
  # #show
  #   get '/school_classes/:id', to:"school_classes#show"
  #
  # #new
  #   get '/school_classes/new', to:"school_classes#new", as:"new_school_classes"
  #
  # #create
  #
  #   post '/school_classes/:id', to:"school_classes#create"
  #
  # #edit
  #
  #   get '/school_classes/:id/edit', to:"school_classes#edit"
  #
  # #update
  #
  #   patch '/school_classes/:id', to:"school_classes#update"

end
