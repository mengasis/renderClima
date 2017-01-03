class TemperaturaController < ApplicationController

  def index
    @temperaturas = Temperatura.all
  end

end
