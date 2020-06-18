class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end 

  def show
    @appointment = Appointment.find(params[:id])
  end 

  def new
    @appointment = Appointment.new 
  end 

  def create 
    @appointment = Appointment.new(appointment_params)
    @match = Match.create(user_id: @current_user.id, dog_id: params[:match][:dog_id])
    @appointment.match_id = @match.id
    if @appointment.valid?
      @appointment.save
      redirect_to @appointment
    else 
      render :new
    end 
  end 

  private
  def appointment_params
    params.require(:appointment).permit(:match_id, :description, :appointment_datetime)
  end 


end 