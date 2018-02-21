class PersonsController < ApplicationController
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

    @person.save
    redirect_to @person
  end

  private
    def person_params
      params.require(:person).permit(:firstname, :lastname, :email, :bio)
    end
end
