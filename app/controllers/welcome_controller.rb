class WelcomeController < ApplicationController
  def index
    @stations = FuelFacade.new 
  end
end
