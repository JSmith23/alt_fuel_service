class FuelModel
  attr_reader :name, :address, :fuel, :access_code
  def initialize(attributes = {})
    @name = attributes[:station_name]
    @address = attributes[:street_address]
    @fuel = attributes[:fuel_type_code]
    @access_time = attributes[:open_date]
  end
end