class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
   @vote = Vote.new(params_vote)
   @event = Event.find(params[:event_id])
   @vote.event = @event
   @vote.user = current_user
   if @vote.save
    redirect_to go_path
    # redirect_to edit_criterias_path(current_user.criteria)
   else
    render 'new'
   end
  end

  private

  def params_vote
    params.require(:vote).permit(:note)
  end
end
