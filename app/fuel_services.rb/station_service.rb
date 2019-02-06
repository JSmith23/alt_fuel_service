class FuelService
  def initialize(token)
    @token = token
  end

  

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?limit=1") do |fd|
      fd.params["api_key"] = ENV['FUEL_STATION_KEY']
      fd.adapter Faraday.default_adapter
    end
end