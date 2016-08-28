class ObjectivesController < ApplicationController
  # GET /objectives/new
  before_action :set_objective, only: [:show, :edit, :update, :update_amount, :update_details]

  def create
    @objective = Objective.new
    if params[:travel]
      @objective.name = 'Viajar'
    elsif params[:car]
      @objective.name = 'Comprar um carro'
    elsif params[:house]
      @objective.name = 'Comprar um imóvel'
    elsif params[:faculty]
      @objective.name = 'Fazer faculdade'
    else
      @objective.name = 'Outro'
    end

    @objective.save
    redirect_to update_details_objective_path(@objective)
  end

  def update_details_automatic
    @objective = Objective.last

    @objective.update_attributes(details: params[:details])
    if @objective.name == 'Viajar'
      @objective.update_attributes(amount: 30_000)
    elsif @objective.name == 'Comprar um carro'
      @objective.update_attributes(amount: 20_000)
    elsif @objective.name == 'Comprar um imóvel'
      @objective.update_attributes(amount: 100_000)
    elsif @objective.name == 'Fazer faculdade'
      @objective.update_attributes(amount: 200_000)
    else
      @objective.update_attributes(amount: params[:amount])
    end
    #redirect_to update_amount_objective_path
  end

  def update_details
    @objective = Objective.find params[:id]
  end

  def new
    @objective = Objective.new
  end

  def update
    @objective = Objective.find params[:id]
    if @objective.update(objective_params)
      redirect_to update_details_objective_path(@objective)
    end
  end

  # GET /objectives
  # GET /objectives.json
  def index
    @objectives = Objective.all
  end

  # GET /objectives/1
  # GET /objectives/1.json
  def show
  end


  # GET /objectives/1/edit
  def edit
  end

  # DELETE /objectives/1
  # DELETE /objectives/1.json
  def destroy
    @objective.destroy
    respond_to do |format|
      format.html { redirect_to objectives_url, notice: 'Objective was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objective
      @objective = Objective.last
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objective_params
      params.require(:objective).permit(:name, :details, :amount, :time, :monthly_amount)
    end
end
