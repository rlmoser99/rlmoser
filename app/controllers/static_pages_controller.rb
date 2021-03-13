# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def page
    if published_page?(page_params[:page])
      render "static_pages/#{page_params[:page]}.html.erb"
    else
      redirect_to :root
    end
  end

  private

    def page_params
      params.permit(:page)
    end

    def published_pages
      %w[home projects contact about]
    end

    def published_page?(page)
      published_pages.include?(page)
    end
end
