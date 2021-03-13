# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'

  StaticPagesController.action_methods.each do |action|
    get "static_pages/#{action}", to: "static_pages##{action}", as: "#{action}_static_page"
  end
end
