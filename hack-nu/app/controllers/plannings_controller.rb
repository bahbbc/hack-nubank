class PlanningsController < ApplicationController
  before_action :set_planning, only: [:show, :edit, :update, :destroy]

  # GET /plannings
  # GET /plannings.json
  def index
    @plannings = Planning.all
    @account_data = AccountDatum.all
    fix_expense_value = @plannings.inject(0){ |sum,p| (p.category == 'Gastos fixos') ? sum + p.value : sum}
    fix_expense_count = @account_data.inject(0){ |sum,p| (p.category == 'Gastos fixos') ? sum + p.amount : sum}
    p(fix_expense_value)
    p(fix_expense_count)

    @fix_expense = (fix_expense_count/fix_expense_value)*100

    var_expense_value = @plannings.inject(0){ |sum,p| (p.category == 'Gastos variáveis') ? sum + p.value : sum}
    var_expense_count = @account_data.inject(0){ |sum,p| (p.category == 'Gastos variáveis') ? sum + p.amount : sum }
    @var_expense = (var_expense_count/var_expense_value)*100
  end

  def planning_details
    @plannings = Planning.all
  end

  # GET /plannings/1
  # GET /plannings/1.json
  def show
  end

  # GET /plannings/new
  def new
    @planning = Planning.new
  end

  # GET /plannings/1/edit
  def edit
  end

  # POST /plannings
  # POST /plannings.json
  def create
    @planning = Planning.new(planning_params)

    respond_to do |format|
      if @planning.save
        format.html { redirect_to @planning, notice: 'Planning was successfully created.' }
        format.json { render :show, status: :created, location: @planning }
      else
        format.html { render :new }
        format.json { render json: @planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plannings/1
  # PATCH/PUT /plannings/1.json
  def update
    respond_to do |format|
      if @planning.update(planning_params)
        format.html { redirect_to @planning, notice: 'Planning was successfully updated.' }
        format.json { render :show, status: :ok, location: @planning }
      else
        format.html { render :edit }
        format.json { render json: @planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plannings/1
  # DELETE /plannings/1.json
  def destroy
    @planning.destroy
    respond_to do |format|
      format.html { redirect_to plannings_url, notice: 'Planning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planning
      @planning = Planning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planning_params
      params.require(:planning).permit(:name, :category, :subcategory, :value)
    end
end
