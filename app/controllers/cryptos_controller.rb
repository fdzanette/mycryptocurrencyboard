class CryptosController < ApplicationController
  ActionView::Base.prefix_partial_path_with_controller_namespace = false
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_coin, only: [:show, :destroy, :edit, :update]

  def index
   @cryptos = Crypto.set_crypto_database
  end

  def user_portfolio
    @all_cryptos = Crypto.set_crypto_database
    @cryptos = current_user.cryptos
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

  def edit

  end

  def update
    if @crypto.user != current_user
      redirect_to root_path
    else
      @crypto.update(crypto_params)
      if @crypto.save
        redirect_to crypto_path(@crypto)
      else
        render :new
      end
    end
  end

  def destroy
    @all_cryptos = Crypto.set_crypto_database
    @cryptos = current_user.cryptos
    if @crypto.destroy
      respond_to do |format|
        format.html { redirect_to user_portfolio_cryptos_path }
        format.js  # <-- will render `app/views/reviews/destroy.js.erb`
       end
    else
      respond_to do |format|
        format.html { render 'cryptos/user_portfolio' }
        format.js  # <-- idem
      end
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
