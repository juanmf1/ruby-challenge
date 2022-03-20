class PeopleController < ApplicationController

  before_action :find_person, only: [:detail, :edit, :update]

  def index
    @people = Person.all
  end

  def new 
    @person = Person.new
  end

  def create 
    @person = Person.create(name: params[:person][:name],surname: params[:person][:surname],birth_date: params[:person][:birth_date], dni: params[:person][:dni] )  
    render json: @person
  end

  def detail 
  end

  def edit 
  end

  def update 
    @person.update(name: params[:person][:name],surname: params[:person][:surname],birth_date: params[:person][:birth_date], dni: params[:person][:dni] )  
    redirect_to @person
  end

  def find_person
    @person = Person.find(params[:id])
  end

end
