class CodigosController < ApplicationController
  
  require 'services/codigo_api'

  def search
    @codigo_api = CodigoAPI.new(params[:q])
    @codigo_api.query
    @codigos = @codigo_api.codigos_array
    @codigo_hash = @codigo_api.codigos_hash
    @codigo_hash_by_id = @codigo_api.codigos_hash_by_id(params[:id])
    @codigo_hash_by_titulo = @codigo_api.codigos_hash_by_titulo(params[:titulo])
  end

  def index
    @codigos = CodigoAPI.new(params[:q]).codigos_array
    render json: @codigos
  end

  def show
    @codigo = Codigo.find(params[:id])
    render json: @codigo
  end

  def create 
    @codigo = Codigo.create(
      zip_code: params[:zip_code],
      locality: params[:locality],
      federal_entity: params[:federal_entity],
      settlements: params[:settlements],
      municipality: params[:municipality]
    )
    render json: @codigo
  end

  def update
    @codigo = Codigo.find(params[:id])
    @codigo.update(
      zip_code: params[:zip_code],
      locality: params[:locality],
      federal_entity: params[:federal_entity],
      settlements: params[:settlements],
      municipality: params[:municipality]
    )
    render json: @codigo
  end

  def destroy
    @codigos = Codigo.all
    @codigo = Codigo.find(params[:id])
    @codigo.destroy
    render json: @codigos
  end

end
