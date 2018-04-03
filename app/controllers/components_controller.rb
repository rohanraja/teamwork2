class ComponentsController < ApplicationController
  before_action :set_application
  def new
    @component = @application.components.new
  end

  def create

    @component = Component.new(params.require(:component).permit(:name, :application_id))
    @component.save
    redirect_to [@application, :components]
  end

  def index
  end

  def set_application
    @application = Application.find(params[:application_id])
  end
end
