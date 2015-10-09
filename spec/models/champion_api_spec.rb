require 'rails_helper'
require 'webmock/rspec'


describe ChampionApi do
  before(:each) do
    @champion_api = ChampionApi.new
  end

  describe '#get_champion' do
    it 'should make a get request' do
      stub = stub_request(:get, /na\.api\.pvp\.net\/api\/lol\/static-data\/na\/v1\.2\/champion\//)
      @champion_api.get_champion(champ_id: 13)
      expect(stub).to have_been_requested
    end
  end
end