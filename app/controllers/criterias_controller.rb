class CriteriasController < ApplicationController
  before_action :authenticate_user!

  def edit
    @criteria = current_user.criteria
  end

  def update
    current_user.choices.delete_all
    @criteria = current_user.criteria

    if @criteria.update(criteria_params)
      redirect_to new_choice_path
    else
      render 'edit'
    end
  end

  private
  def criteria_params
    params.require(:criteria).permit(:wild, :kind)
  end
end
