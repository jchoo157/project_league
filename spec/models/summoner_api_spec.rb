require 'rails_helper'
require 'webmock/rspec'


describe SummonerApi do
  before(:each) do
    @summoner_api = SummonerApi.new
  end

  describe '#get_summoner' do
    it 'should make a get request' do
      stub = stub_request(:get, /na\.api\.pvp\.net\/api\/lol\/na\/v1\.4\/summoner\/by-name\//)
      @summoner_api.get_summoner_info(by_name: 'dyrus')
      expect(stub).to have_been_requested
    end
  end

  describe '#default_url' do
    it 'should be a string' do
      expect(@summoner_api.default_url).to eq('api/lol/na/v1.4/summoner/by-name/')
    end
  end
end