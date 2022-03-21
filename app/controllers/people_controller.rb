class PeopleController < ApplicationController

  before_action :find_person, only: [:detail, :edit, :update, :destroy]

  def index
    @people = Person.all.sort_by{|e| e.birth_date.month}
    @ages = averageAge(@people)
  end


  def averageAge(array)
    ages = 0
    array.each {|person| ages += calculateAge(person.birth_date) }

    if array.length == 0
      return ages
    else 
      averageAge = ages / array.length
      return averageAge
    end

  end


  def new 
    @person = Person.new
  end


  def create 
    @person = Person.create(name: params[:person][:name],surname: params[:person][:surname],birth_date: params[:person][:birth_date], dni: params[:person][:dni] )  
    redirect_to root_path
  end


  def detail 
    @age = calculateAge(@person.birth_date)
  end


  def calculateAge (birthday) 
    ((Time.now - birthday.to_time)/(60*60*24*365)).floor
  end


  def edit 
  end

  def update 
    @person.update(name: params[:person][:name],surname: params[:person][:surname],birth_date: params[:person][:birth_date], dni: params[:person][:dni] )  
    redirect_to @person
  end


  def destroy
    @person.destroy
    redirect_to root_path
  end

  
  def find_person
    @person = Person.find(params[:id])
  end


end
