class ChoicesController < ApplicationController
  def index
  end

  def new
    criteria = current_user.criteria
    if criteria.drink == true
      @event = Event.where(event_type: "drink").first
    elsif criteria.dance == true
      @event = Event.where(event_type: "dance").first
    elsif criteria.culture == true
      @event = Event.where(event_type: "culture").first
    end
    @choice = Choice.create(event: @event, user: current_user)
  end

  # PUT /choices/:id
  def update
    @choice = current_user.choices.find(params[:id])

    @choice.update(choice_params)
    if current_user.choices.where(accepted: true).count == 3
     redirect_to root_path
    else
      redirect_to new_choice_path
    end
    # @choice.user = current_user
    # @choice.event = Choice.find(params[:choice_id])
    # @choice.save
    # redirect_to choice_path(@choice)
  end

  private

  def choice_params
    params.require(:choice).permit(:accepted)
  end
end
