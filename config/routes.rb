Rails.application.routes.draw do
  get '/list', to: 'flats#list' # list with all flats

  # dynamic route
  get '/flats/:id', to: 'flats#show', as: :show # information about one flat
end
