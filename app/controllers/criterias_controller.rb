class CriteriasController < ApplicationController
  def edit
    @criteria = current_user.criteria
  end

  def update
    @criteria = current_user.criteria

    if @criteria.update(criteria_params)
      redirect_to new_choice_path
    else
      render 'new'
    end
  end

  private
  def criteria_params
    params.require(:criteria).permit(:dance, :drink, :wild, :culture)
  end
end
