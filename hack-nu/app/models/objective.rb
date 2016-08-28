class Objective < ActiveRecord::Base
  def create
    @objective = Objective.new(params[:name])

    @objective.save
    redirect_to update_objective_path
  end

  def update_objective
    @objective = Objective.last

    @objective.update_attributes(details: params[:details])
    redirect_to update_amount_path
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

  def edit
  end

  private
  def objective_params
    params.require(:objective).permit(:name, :details, :amount, :time, :monthly_amount)
  end
end
