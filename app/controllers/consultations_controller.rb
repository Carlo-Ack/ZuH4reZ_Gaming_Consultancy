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
  end

  def chosen_category
    @consult_category = params[:category]
    redirect_to consult_survey_path(@consult_category)
  end

  def survey
    @consult_category = params[:category]
    render partial: "#{@consult_category.downcase}_survey"
  end

  def submit_survey
    # Here you could save survey data or send it to an LLM API
    @consult_category = params[:consult_category]
    @responses = params[:responses]
    redirect_to consult_chat_path("llm")
  end

  def chat
    @mode = params[:mode] # "llm" or "admin"
    # Mode decides whether chat connects to GPT or human admin
  end

    # def create
    #   # @consultation = current_user.consultations.new(consultation_params)
    #   @consultation = Consultations.new(consultation_params)
    #   @consultation.date = Date.today
    #   if @consultation.save
    #     redirect_to consultations_path
    #   else
    #     flash.now[:alert] = "Failed to create consultation."
    #     render :new, status: :unprocessable_entity
    #   end
    # end
  # should also update?

  # private

  # def consultation_params
  #   params.require(:consultation).permit(:name)
  # end

end
