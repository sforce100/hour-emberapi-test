Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications, :authorizations
    controllers tokens: 'custom_tokens'
  end
  # devise_for :users

  mount API::Base => '/'

  # namespace :api do
  #   namespace :v1 do
  #     resources :products
  #   end
  # end
end
