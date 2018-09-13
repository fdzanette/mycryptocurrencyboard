class CryptosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_coin, only: [:show]

  def index
   @cryptos = Crypto.set_crypto_database
  end

  def show

  end

  def new
    @crypto = Crypto.new
  end

  def create
    @crypto = Crypto.new(crypto_params)
    @crypto.user = current_user
    if @crypto.save
      redirect_to crypto_path(@crypto)
    else
      render :new
    end
  end

  private

  def crypto_params
    params.require(:crypto).permit(:name, :price, :total)
  end

  def set_coin
    @crypto = Crypto.find(params[:id])
  end

end
