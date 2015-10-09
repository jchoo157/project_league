require 'rails_helper'
require 'webmock/rspec'


describe MatchHistoryApi do
  before(:each) do
    @match_history_api = MatchHistoryApi.new
  end

  describe '#get_match_history' do
    it 'should make a get request' do
      stub = stub_request(:get, /na\.api\.pvp\.net\/api\/lol\/na\/v2\.2\/match\//)
      @match_history_api.get_match_history(for_id: 1)
      expect(stub).to have_been_requested
    end
  end
end