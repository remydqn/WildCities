class EventsController < ApplicationController

  def show
    @events = []
    @events << Event.find(params[:id])
    @events << Event.find(params[:id])
    @events << Event.find(params[:id])
  end

  def index
    @choices = current_user.choices.where(accepted: true)
    @events = @choices.map { |choice| choice.event }
  end

end
