class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      ContactsMailer.general_message(@contact).deliver
      render :thanks
    else
      render :new
    end
  end

  def thanks
  end

  def user_params
    params.require(:user).permit(:name, :email, :telephone)
  end

end
