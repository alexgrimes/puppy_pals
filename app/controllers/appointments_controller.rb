class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end 

  def show
    @appoinments = Appointment.find(params[:id])
  end 

  def new
    @appointment = Appointment.new 
  end 

  def create 
    @appointment = Appointment.create(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else 
      render :new
    end 
  end 

end 