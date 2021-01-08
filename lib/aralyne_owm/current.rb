require "aralyne_owm/config"

class AralyneOwm::Current
  def initialize(city_id, api_key)
    @city_id = city_id
    @api_key = api_key
    @api = AralyneOwm::Config.new(@city_id, endpoint, api_key).call
  end

  def call
    @api
  end

  private

  def endpoint
    'weather'
  end
end