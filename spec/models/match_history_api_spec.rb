require 'rails_helper'
require 'webmock/rspec'


describe MatchHistoryApi do
  before(:each) do
    @match_history_api = MatchHistoryApi.new
  end

  describe '#get_match_history' do
    it 'should return a String' do
      stub_request(:get, 'https://na.api.pvp.net/api/lol/na/v2.2/matchhistory/1' + '?api_key=' + API_KEY).
          with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
          to_return(body: '{ "name": "monster" }')

      expect(@match_history_api.get_match_history(for_id: 1)).to be_a String
    end
  end
end