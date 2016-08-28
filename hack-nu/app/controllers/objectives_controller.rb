class ObjectivesController < ApplicationController
  # GET /objectives/new
  before_action :set_objective, only: [:show, :edit, :update, :update_amount]

  def new
    @objective = Objective.new(objective_params)

    @objective.save
    redirect_to update_objective_path
  end

  def update_amount
    @objective = Objective.last

    if @objective.name == 'travel'
      @objective.update_attributes(amount: 30_000)
    elsif @objective.name == 'car'
      @objective.update_attributes(amount: 20_000)
    elsif @objective.name == 'house'
      @objective.update_attributes(amount: 100_000)
    elsif @objective.name == 'faculty'
      @objective.update_attributes(amount: 200_000)
    else
      @objective.update_attributes(amount: params[:amount])
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

  # PATCH/PUT /objectives/1
  # PATCH/PUT /objectives/1.json
  def update
    @objective = Objective.last

    @objective.update_attributes(details: params[:details])
    redirect_to update_amount_objective_path
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
