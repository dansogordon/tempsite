class HomeController < ApplicationController
  def index
  end
  def about
  end
  def deck
  end
  def video
  end
  def staff
  end
  def contact
  end
  def invester_form
  end
    def post_contact
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact(name, email, message).deliver!
    redirect_to contact_path
  end
end
