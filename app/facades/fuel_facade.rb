class FuelFacade
  def service_stations
    service_list
  end

  private

  def service_list
    service.stations
  end

  def service
    @service ||= FuelService.new
  end
end
