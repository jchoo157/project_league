require 'rails_helper'
require 'webmock/rspec'

describe MatchListApi do
  before(:each) do
    @match_list_api = MatchListApi.new
  end

  describe '#get_match_list' do
    it 'should make a get request' do
      stub = stub_request(:get, %r(api/lol/na/v2\.2/matchlist/by-summoner/))
      @match_list_api.get_match_list(for_summoner_id: 1)
      expect(stub).to have_been_requested
    end
  end
end