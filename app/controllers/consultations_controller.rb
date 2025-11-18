class ConsultationsController < ApplicationController
  # before_action : authenticate_user ??

  def index
    # @consultations = current_user.consultations
    @consultations = Consultation.all
  end

  def new
    # @consultation = current_user.consultations.new
    @consultation = Consultation.new
    @categories = ["Shooter", "RPG", "Strategy", "Simulation", "Jump & Run", "Roguelike"]
    @consult_category = params[:category]
  end

  def chosen_category
    @consult_category = params[:category]
    redirect_to new_consultation_path(category: params[:category])
  end

  def submit_survey
    # Here you could save survey data or send it to an LLM API
    @consult_category = params[:consult_category]
    @responses = params[:responses]
    # storing what was put in the form in the view into above variable
    redirect_to consult_chat_path("llm")
  end

  def chat
    @mode = params[:mode] # "llm" or "admin"
    # Mode decides whether chat connects to GPT or human admin
  end

  # private

  # def consultation_params
  #   params.require(:consultation).permit(:name)
  # end

end
