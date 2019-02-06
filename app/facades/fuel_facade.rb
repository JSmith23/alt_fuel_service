class FuelFacade

  def user_repos
    service_list[0...10]
  end

  private

  def service_list
     service.stations
  end

  def service
    @service ||= FuelService.new
  end
end