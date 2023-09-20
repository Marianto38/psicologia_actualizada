class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment, notice: 'Cita creada exitosamente.'
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to @appointment, notice: 'Cita actualizada exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_url, notice: 'Cita eliminada exitosamente.'
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :reason, :patient_name, :patient_email, :patient_phone, :payment_id, :price, :consultation_type)
  end
end
