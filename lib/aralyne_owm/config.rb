require 'httparty'

class AralyneOwm::Config
  def initialize(city_id, endpoint, api_key)
    @api_key = api_key
    @city_id = city_id
    @endpoint = endpoint
    @api_response = HTTParty.get(uri)
  end

  def call
    @api_response
  end
  private

  def uri
    "#{base_url}#{@endpoint}?id=#{@city_id}&units=metric&appid=#{@api_key}&lang=pt_br"
  end

  def base_url
    "http://api.openweathermap.org/data/2.5/"
  end
end
  