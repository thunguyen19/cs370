Rails.application.routes.draw do
  get 'admin/home'
  get 'admin/stats'
  get 'admin/configs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tutees, :courses, :requests
  root :to => redirect('/tutees')

  get 'requests/history/:tutee_id', to: 'requests#history', as: :request_history_tutee  
end
