Rails.application.routes.draw do

  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}


  namespace :admin do
    resources :products do
      member do
        patch :move_up
        patch :move_down
        post  :publish
        post  :hide
      end
    end
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end


  root 'welcome#index'
  resources :products do
  resources :reviews
    member do
      post :add_to_cart
      post :add_to_wish_list
      post :delete_from_wish_list
      put "like", to: "products#upvote"
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end

  resources :cart_items

  namespace :account do
    resources :orders
    resources :products
    resources :users #加入这一行，新增用户中心的相关路径
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
