# app/controllers/api/appointments_controller.rb
class Api::AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :update, :destroy]

  # GET /api/appointments
  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  # GET /api/appointments/1
  def show
    render json: @appointment
  end

  # POST /api/appointments
  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/appointments/1
  def destroy
    @appointment.destroy
    head :no_content
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :time, :reason, :patient_name, :patient_email, :patient_phone, :payment_id)
  end
end
