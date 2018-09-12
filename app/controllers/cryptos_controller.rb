class CryptosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  require 'json'
  require 'open-uri'

  def index
    @coins = []
    @cryptos = fetch_data_from_api
    @cryptos.each do |crypto|
      @coins << {'nome' => crypto['name'],
                 'preco' => crypto['price_usd']}
    end
    @coins
  end

  def fetch_data_from_api
    url = "https://api.coinmarketcap.com/v1/ticker/"
    uri = open(url).read
    parsed_data = JSON.parse(uri)
  end
end
