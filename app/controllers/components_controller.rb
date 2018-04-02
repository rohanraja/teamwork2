class ComponentsController < ApplicationController
  def new
    @app = Application.find(params[:id])
  end
end
