require "aralyne_owm/config"

class AralyneOwm::Forecast
  def initialize(city_id)
    @city_id = city_id
    @api = AralyneOwm::Config.new(@city_id, endpoint).call
  end

  def call
    @api
  end

  private

  def endpoint
    'forecast'
  end
end