Rails.application.routes.draw do
  devise_for :users
  root "booking#index"
  get "booking/ticket", to: "booking#ticket", as: "ticket"
  get "booking/hotels", to: "booking#hotels", as: "hotels"
  get "booking/resturants", to: "booking#resturants", as: "resturants"
  get "booking/way", to: "booking#way", as:"way"
  get "booking/todo", to: "booking#todo", as:"todo"
  get "booking/filter_dist"
  get "booking/filter_site"
  get "booking/view", to: "booking#view", as: "view"
  get '/payment_form', to: 'payment#payment_form'
  post '/process_payment', to: 'payment#process_payment'
  get '/success_payment', to: 'payment#success'
end
