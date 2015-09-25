require 'rails_helper'
require 'webmock/rspec'


describe SummonerApi do
  before(:each) do
    @summoner_api = SummonerApi.new
  end

  describe '#get_summoner' do
    it 'should return a String' do
      stub = stub_request(:get, 'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/dyrus' + '?api_key=' + API_KEY)
      @summoner_api.get_summoner_info(by_name: 'dyrus')
      expect(stub).to have_been_requested
    end
  end
end