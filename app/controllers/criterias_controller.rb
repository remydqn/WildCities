class CriteriasController < ApplicationController
  def new
    @criteria = Criteria.new
  end

  def create
    @criteria = Criteria.new(criteria_params)

    if @criteria.save
      redirect_to new_choice_path
    else
      render 'new'
    end
  end

#   private
#    def article_params
#      params.require(:criteria).permit(:)
#    end
# end
