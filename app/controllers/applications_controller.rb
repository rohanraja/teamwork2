class ApplicationsController < ApplicationController
  def component_list
    @app2 = Application.find(params[:id])
    # @components = @app2.components
  end
end
