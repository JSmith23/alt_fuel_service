class FuelService

  def stations
    get_json("/api/alt-fuel-stations/v1/nearest.format?limit=10").map do |json_data|
      FuelModel.new(json_data)
    end
  end

  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json") do |fd|
      fd.params["api_key"] = ENV['FUEL_STATION_KEY']
      fd.adapter Faraday.default_adapter
    end
  end

end