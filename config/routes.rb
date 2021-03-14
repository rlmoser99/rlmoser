# frozen_string_literal: true

Rails.application.routes.draw do
  get "static_pages/:page", to: "static_pages#page", as: :static_page

  root 'static_pages#home'
end
