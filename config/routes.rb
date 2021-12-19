Rails.application.routes.draw do
  resources :products
  devise_for :users
  get 'article/article_about_us'
  get 'checkout/checkout'
  get 'auth/user'
  get 'auth/create_user'
  get 'auth/login'
  get 'cart/cart'
  get 'search/search_grid'
  get 'search/search'
  get 'category/category_grid'
  get 'category/category'
  get 'product/product'
  get 'home/index'
  root 'home#index'
end
