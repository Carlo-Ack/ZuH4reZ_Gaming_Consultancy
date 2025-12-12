class BfrandomizersController < ApplicationController

  def index
    # @bfrandomizer_history = current_user.bfrandomizer
    @bfrandomizer_history = Bfrandomizer.all
    # @result = Bfrandomizer.order("RANDOM()").first
  end

  def new
    # @bfrandomizer_history = current_user.bfrandomizer.new
    @bfrandomizer = Bfrandomizer.new
  end

  def roll
    @result = Bfrandomizer.random
    render partial: 'bfrandomizers/random_result', locals: { result: @result }
  end

end
