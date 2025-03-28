Studystupid::Application.routes.draw do

  resources :data
  resources :labs
  resources :terrestrials
  resources :marines
  resources :videos
  resources :photos
  resources :media
  resources :actions
  resources :scholarships
  resources :trainings
  resources :jobs
  resources :news

#  namespace :admin do
#    resources :resumes
#  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'


  get '/myaccount', to: 'myaccount#index'
 
  
  get '/', to: 'index#index'
  get '/about', to: 'index#about'
  get '/contact', to: 'index#contact'
  get '/help', to: 'index#help'
  
 
  devise_scope :account do
    get '/accounts/sign_up/update_state_select', to: "accounts/registrations#update_state_select"
  end
  
  get'/myaccount/edit_account_first_name', to: "myaccount#edit_account_first_name"

  root :to => "index#index"

  devise_for :accounts, :controllers => { :omniauth_callbacks => "accounts/omniauth_callbacks" , :registrations => "accounts/registrations" }
  

  # Admin
  ActiveAdmin.routes(self)

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
