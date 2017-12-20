class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
   @patient = Patient.new
  end

  def show
   @patient = Patient.find(params[:id])
  end

  def create
   @patient = Patient.new(patient_params)
   redirect_to @patient
  end


  private
  def patient_params
      params.require(:patient).permit(:name, :age)
    end

end