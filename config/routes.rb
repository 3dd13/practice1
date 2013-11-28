Practice1::Application.routes.draw do
#  get "rares/index"
#  get "rares/create"
#  get "rares/update"
#  get "rares/destroy"
  
#  root 'site#index'


scope :api do
    resources :rares, except: [:show, :new, :edit], defaults: { format: :json} do
      get ':id' => 'rares#index', on: :collection
    end
  end

  root 'site#index'
end
