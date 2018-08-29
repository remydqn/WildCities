class ChoicesController < ApplicationController
  def index
  end

  def new
    @choice = Choice.new
    criteria = current_user.criteria
    if criteria.drink == true
      @events = Event.where(event_type: "drink").page(params[:page]).per(1)
    elsif criteria.dance == true
      @events = Event.where(event_type: "dance").page(params[:page]).per(1)
    elsif criteria.culture == true
      @events = Event.where(event_type: "culture").page(params[:page]).per(1)
    end
  end

  def create
    @choice = choice.new(choices_params)
    @choice.user = current_user
    @choice.event = Choice.find(params[:choice_id])
    @choice.save
    redirect_to choice_path(@choice)
  end

  private

  def choice_params
    params.require(:choice).permit(:name)
  end
end
