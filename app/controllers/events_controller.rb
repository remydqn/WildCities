class EventsController < ApplicationController
  def create
  end

  def show
    @event = Event.find(params[:id])
  end
end

