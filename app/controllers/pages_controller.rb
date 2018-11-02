class PagesController < ApplicationController
  before_action :set_page

  def show;end

  private

  def set_page
    @page = params[:id]
  end
end
