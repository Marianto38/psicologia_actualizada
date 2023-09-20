# app/controllers/react_app_controller.rb
class ReactAppController < ApplicationController
  def index
  end

  def home
    render 'home'
    # Realiza cualquier lógica necesaria aquí
    # Puedes renderizar una vista o simplemente redirigir a otra URL
  end
end
