# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def page
    @page_title = page_params[:page]
    if published_page?(@page_title)
      render "#{@page_title}.html.erb"
    else
      redirect_to :root
    end
  end

  private

    def page_params
      params.permit(:page)
    end

    def published_pages
      %w[home projects about]
    end

    def published_page?(page)
      published_pages.include?(page)
    end
end
