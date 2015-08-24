class DevelopersController < ApplicationController

  def index
    
  end
  
  def create
    @developer = Developer.new(developer_params)
    @developer.save
    redirect_to :back
  end

  private
  def developer_params
    params.require(:developer).permit(:email)
  end
  
end