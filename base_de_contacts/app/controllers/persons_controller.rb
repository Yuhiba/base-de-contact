class PersonsController < ApplicationController
  def new
  end

  def create
    render plain: params[:person].inspect
  end
end
