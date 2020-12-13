require 'pry'

class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.collect do |appointment|
      # binding.pry
      appointment.patient 
    end
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    # binding.pry
    Appointment.new(date, patient, self)
  end

end 