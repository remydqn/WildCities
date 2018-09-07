class VotesController < ApplicationController
  before_action :set_event, only: [:new, :create]

  def new
    @vote = Vote.new
  end

  def create
   @vote = Vote.new(params_vote)
   @vote.event = @event
   @vote.user = current_user
   if @vote.save
    redirect_to root_path
   else
    render 'new'
   end
  end

  private

  def params_vote
    params.require(:vote).permit(:note, :wildness)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
