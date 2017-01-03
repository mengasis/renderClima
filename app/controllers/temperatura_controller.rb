class TemperaturaController < ApplicationController

  def historico
    @temperaturas = Temperatura.all
  end

  def create
    temp = params[:temperatura]
    ciudad = params[:ciudad]

    Temperatura.create(temperatura: temp, ciudad: ciudad, fecha: Date.current.to_s)

    redirect_to action: 'historico'

  end

  def reset
    Temperatura.delete_all
    redirect_to action: 'historico'
  end

end
