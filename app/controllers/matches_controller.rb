class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end 

  def show
    @match = Match.find(params[:id])
  end 

  def new
    @match = Match.new 
  end 

  def create 
    @match = Match.new(match_params)
    if @match.save
      redirect_to @match
    else 
      render :new
    end 
  end 

  private
  def match_params
    params.require(:match).permit(:user_id, :dog_id)
  end 

end 