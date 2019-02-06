class SearchController < ApplicationController
  def index
    @stations = FuelFacade.new
  end
end
