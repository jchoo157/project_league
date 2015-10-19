require 'rails_helper'
require 'webmock/rspec'

describe BaseApi do
  before(:each) do
    @base_api = BaseApi.new
  end
end