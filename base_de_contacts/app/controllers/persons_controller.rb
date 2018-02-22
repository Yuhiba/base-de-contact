class PersonsController < ApplicationController
  def edit
    @person = Person.find(params[:id])
  end
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end

  private
    def person_params
      params.require(:person).permit(:firstname, :lastname, :email, :bio)
    end
end
