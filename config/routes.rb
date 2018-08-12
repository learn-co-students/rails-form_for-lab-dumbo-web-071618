Rails.application.routes.draw do

  #SchoolClassesController
  #index action
  get "/school_classes", to: "school_classes#index", as: "school_classes"

  #new action
  get "/school_classes/new", to: "school_classes#new", as: "new_school_class"

  #create action
  post "/school_classes", to: "school_classes#create"

  #show action
  get "/school_classes/:id", to: "school_classes#show", as: "school_class"

  #edit action
  get "/school_classes/:id/edit", to: "school_classes#edit", as: "edit_school_class"

  #update action
  patch "/school_classes/:id", to: "school_classes#update"

  #StudentsClassController

  #index
  get "/students", to: "students#index", as: "students"

  #new
  get "/students/new", to: "students#new", as: "new_student"

  #create
  post "/students", to: "students#create"

  #show
  get "/students/:id", to: "students#show", as: "student"

  #edit
  get "/students/:id/edit", to: "students#edit", as: "edit_student"

  #update
  patch "/students/:id", to: "students#update"






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
