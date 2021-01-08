require "aralyne_owm/config"

class AralyneOwm::Current
  def initialize(city_id)
    @city_id = city_id
    @api = AralyneOwm::Config.new(@city_id, endpoint, '123456789').call
  end

  def call
    @api
  end

  private

  def endpoint
    'weather'
  end
end