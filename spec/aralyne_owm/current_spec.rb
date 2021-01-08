require 'spec_helper'
require 'pry'

RSpec.describe AralyneOwm::Current do 
  describe '#call' do
    context 'When return Current weather data objec' do
      it 'must return Current weather data object', :vcr do
        city_id = '3395981'
        api_key = '123'
        response = VCR.use_cassette('AralyneOwm_Current/current/valid_response') do
          AralyneOwm::Current.new(city_id, api_key).call
        end

        expect(response).to have_key("cod")
        expect(response["cod"]).to eq(200)
      end
    end
    context 'When status code 400' do
      it'when status code 400', :vcr do
        city_id = nil
        api_key = '123'
        response = VCR.use_cassette('AralyneOwm_Current/current/invalid_response') do
          AralyneOwm::Current.new(city_id, api_key).call
        end

        expect(response).to have_key("cod")
        expect(response["cod"]).to eq("400")
      end 
    end 
  end
end