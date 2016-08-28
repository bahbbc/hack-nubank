class AccountDataController < ApplicationController
  before_action :set_account_datum, only: [:show, :edit, :update, :destroy]

  # GET /account_data
  # GET /account_data.json
  def index
    @account_data = AccountDatum.all
  end

  # GET /account_data/1
  # GET /account_data/1.json
  def show
  end

  # GET /account_data/new
  def new
    @account_datum = AccountDatum.new
  end

  # GET /account_data/1/edit
  def edit
  end

  # POST /account_data
  # POST /account_data.json
  def create
    @account_datum = AccountDatum.new(account_datum_params)

    respond_to do |format|
      if @account_datum.save
        format.html { redirect_to @account_datum, notice: 'Account datum was successfully created.' }
        format.json { render :show, status: :created, location: @account_datum }
      else
        format.html { render :new }
        format.json { render json: @account_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_data/1
  # PATCH/PUT /account_data/1.json
  def update
    respond_to do |format|
      if @account_datum.update(account_datum_params)
        format.html { redirect_to @account_datum, notice: 'Account datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_datum }
      else
        format.html { render :edit }
        format.json { render json: @account_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_data/1
  # DELETE /account_data/1.json
  def destroy
    @account_datum.destroy
    respond_to do |format|
      format.html { redirect_to account_data_url, notice: 'Account datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_datum
      @account_datum = AccountDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_datum_params
      params.require(:account_datum).permit(:user_id, :amount, :category, :name)
    end
end
