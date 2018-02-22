class ContactsController < ApplicationController
  def edit
    @contact = Contact.find(params[:id])
  end
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:firstname, :lastname, :email, :tel, :bio)
    end
end

