class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

end
