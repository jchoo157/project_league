class BaseApi
  attr_reader :base_url, :client

  def initialize
    @base_url = 'https://na.api.pvp.net/' + default_url
    @client = RestClient::Resource.new(base_url, headers: { params: { api_key: ENV['API_KEY'] } })
  end

  def default_url
    ''
  end
end