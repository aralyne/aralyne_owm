require 'spec_helper'
require 'pry'

RSpec.describe AralyneOwm::Forecast do 
  describe '#call' do
    context 'When return forecast weather data objec' do
      it 'must return forecast weather data object', :vcr do
        city_id = '3395981'
        response = VCR.use_cassette('AralyneOwm_Forecast/forecast/valid_response') do
          AralyneOwm::Forecast.new(city_id).call
        end

        expect(response).to have_key("cod")
        expect(response["cod"]).to eq("200")
      end
    end
    context 'When status code 400' do
      it'when status code 400', :vcr do
        city_id = nil
        response = VCR.use_cassette('AralyneOwm_Forecast/forecast/invalid_response') do
          AralyneOwm::Forecast.new(city_id).call
        end

        expect(response).to have_key("cod")
        expect(response["cod"]).to eq("400")
      end 
    end 
  end
end