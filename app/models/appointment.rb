class Appointment < ApplicationRecord
  belongs_to :match

  # def appointment_datetime=(appointment_datetime)
  #   self.appointment = Appointment.find_or_create_by(appointment_datetime: appointment_datetime)
  # end 

  # def appointment_datetime
  #   self.appointment ? self.appointment.appointment_datetime : nil
  # end 
  
end
