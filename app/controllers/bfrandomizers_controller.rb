class BfrandomizersController < ApplicationController

  def index
    # @bfrandomizer_history = current_user.bfrandomizer_results
    @bfrandomizer_history = []
    # empty array because nothing is saved yet
  end

  def new
    @bfrandomizer = Bfrandomizer.new
  end

  def roll
    @result = Bfrandomizer.random
    render partial: 'bfrandomizers/random_result', locals: { result: @result }
  end
end
