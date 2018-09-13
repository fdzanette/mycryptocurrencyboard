class Crypto < ApplicationRecord
  belongs_to :user
  require 'json'
  require 'open-uri'

  def self.set_crypto_database
  url = "https://api.coinmarketcap.com/v1/ticker/"
  uri = open(url).read
  parsed_data = JSON.parse(uri)
   @coins = []
    @cryptos = parsed_data
    @cryptos.each do |crypto|
      @coins << {'nome' => crypto['name'],
                 'preco' => crypto['price_usd'],
                 'ticker' => crypto['symbol'],
                 'change' => crypto['percent_change_24h'],
                 'market_cap' => crypto['market_cap_usd'],
                 'volume' => crypto['24h_volume_usd'] }
    end
  @coins
  end
end
