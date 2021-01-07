require "aralyne_owm/config"

class AralyneOwm::Forecast
  def initialize(params)
    @params = params
    @api = AralyneOwm::Config.new(city_id, endpoint).call
  end

  def call
    @api
  end

  private

  def endpoint
    'forecast'
  end

  def city_id
    @params[:city_id]
  end
end