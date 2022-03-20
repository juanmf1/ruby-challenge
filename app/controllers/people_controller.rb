class PeopleController < ApplicationController
  def index
  end

  def new 
    @person = Person.new
    @person.name = 'Ingresar Nombre'
    @person.surname = 'Ingresar Apellido'
    @person.birth_date = 'Ingresar Fecha de Nacimiento'
    @person.dni = 'Ingresar DNI'
  end

  def create 
    @person = Person.create(name: params[:person][:name],surname: params[:person][:surname],birth_date: params[:person][:birth_date], dni: params[:person][:dni] )  
    render json: @person
  end

  def detail 
    @person = Person.find(params[:id])
  end

  def edit 
    @person = Person.find(params[:id])
  end

  def update 
    @person = Person.find(params[:id])
    @person.update(name: params[:person][:name],surname: params[:person][:surname],birth_date: params[:person][:birth_date], dni: params[:person][:dni] )  
    redirect_to @person
  end

end
