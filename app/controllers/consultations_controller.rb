class ConsultationsController < ApplicationController
  # before_action : authenticate_user ??

  def index
    @consultations = current_user.consultations
  end

  def new
    @consultation = current_user.consultations.new
  end

  def create
    @consultation = current_user.consultations.new(consultation_params)
    @consultation.date = Date.today
    if @consultation.save
      redirect_to consultations_path
    else
      flash.now[:alert] = "Failed to create consultation."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def consultation_params
    params.require(:consultastion).permit(:name)
  end

end
