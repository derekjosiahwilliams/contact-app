class ContactController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    contact = Contact.new(first_name: params[:form_first_name], middle_name: params[:form_middle_name], last_name: params[:form_last_name], email: params[:form_email], phone_number: params[:form_phone_number], bio: params[:form_bio])
    contact.save
    render "create.html.erb"
  end

  def show
    contacts_id = params[:id]
    @contact = Contact.find_by(id: contacts_id)
    render "show.html.erb"
  end

  def edit
    render "edit.html.erb"
  end
end
