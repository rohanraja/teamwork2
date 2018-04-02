class ComponentsController < ApplicationController
  def new
    @app = Application.find(params[:id])
    @component = Component.new(application_id: @app.id)
  end

  def create

    @component = Component.new(params.require(:component).permit(:name, :application_id))
    @component.save
    redirect_to "/compList/#{@component.application_id}"
  end
end
