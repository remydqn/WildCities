class ChoicesController < ApplicationController

  before_action :set_choice, only: [:accept, :decline]

  def index
  end

  def new
    criteria = current_user.criteria
    @events = Event.where(event_type: criteria.kind) if criteria.kind
    @choice = Choice.create(event: @events.sample, user: current_user)
      #  il faudra l'affiner avec les event déjà décliner / accepter
      #  if current_user.choices.count >= 1
      #  il faut proposer un nvx choix a l'utilisateur
      #  il ne faut pas que le choix false sois remis a l'utilisateur
  end

  # PUT /choices/:id
  def update
    # @choice = current_user.choices.find(params[:id])
    @choice = Choice.find(params[:id])
    p @choices
    @choice.update(choice_params)
    if current_user.choices.where(accepted: true).count == 3 ||  current_user.choices.where(accepted: true).count
     redirect_to events_path
    else
      redirect_to new_choice_path
    end
    # Qu'est ce que ça veut dire?
    # Pq on redéfinit le user
    # Pq on met une instance de choice dans une instance de choice
    # @choice.user = current_user
    # @choice.event = Choice.find(params[:choice_id])
    # @choice.save
    # redirect_to choi_patce_path(@choice)
  end

  def accept
    @choice.update(accepted: true)
    redirect_to new_choice_path
  end

  def decline
    @choice.update(accepted: false)
    redirect_to new_choice_path
  end

  private

  def set_choice
    @choice = Choice.find(params[:id])
  end

  def choice_params
    params.require(:choice).permit(:accepted)
  end
end
