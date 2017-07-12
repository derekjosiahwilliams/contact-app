class ContactController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    contact = Contact.new(first_name: params[:form_first_name], last_name: params[:form_last_name], email: params[:form_email], phone_number: params[:form_phone_number])
    contact.save
    render "create.html.erb"
  end

  def show
    render "show.html.erb"
  end
end
