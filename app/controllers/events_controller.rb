class EventsController < ApplicationController

  def show
    events = []
    @events << Event.find(params[:id])
    tourweb = Event.create(
      name: "Tour du Web",
      address: "4 rue Professeur Charles Appleton, 69007 Lyon",
      explained_description: "You want to dance all night ? Give the Password to the boss !",
      pending: true,
      city: "Lyon",
      icon: "marker"
    )
    @events << tourweb
  end

  def index
    @choices = current_user.choices.where(accepted: true)
    @events = @choices.map { |choice| choice.event }
  end

end
