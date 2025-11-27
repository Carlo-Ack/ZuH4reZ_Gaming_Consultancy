class BfrandomizersController < ApplicationController

  def index
    # @bfrandomizer_history = current_user.bfrandomizer
    @bfrandomizer_history = Bfrandomizer.all
  end

  def new
    # @bfrandomizer_history = current_user.bfrandomizer.new
    @bfrandomizer = Bfrandomizer.new
    # @categories = ["Shooter", "RPG", "Strategy", "Simulation", "Jump & Run", "Roguelike"]
    # @consult_category = params[:category]
  end

  def roll
    @result = Bfrandomizer.random_result
    render partial: 'shared/random_result', locals: { result: @result }
  end

end
