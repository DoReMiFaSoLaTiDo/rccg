Rails.application.routes.draw do
  # namespace :admin do
  # get 'dashboard/index'
  # end

  get "events/new" => 'events#new', as: 'new_prog'
  get "venues/new" => 'venues#new', as: 'define_new_venue'
  get "messages/new" => 'messages#new', as: 'new_mail'

  get "messages/*office_name/*message_type" => "messages#new", as: 'named_mail'

  resources :events
  resources :venues
  devise_for :users
  scope '/admin' do
    resources :users
  end

  namespace :admin do
    get '/admin', to: 'dashboard#index', as: 'admin_dashboard'
  end

  scope '/office' do
    resources :messages, shallow: true
  end

  # resources :messages, only: []

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'home#index'
  # get '*path' => 'home#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
#  get "/*id" => 'pages#show' #, as: :page, format: false
#  root to: 'pages#index', as '/'


 root "pages#index"

  PagesController.action_methods.each do |action|
    get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end

  # get '/messages/pastor', to: ':messages/:new/message[office_name]=pastor', as: 'pastor_message' #, via: [:get]
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
