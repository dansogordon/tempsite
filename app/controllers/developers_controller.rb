class DevelopersController < ApplicationController
  http_basic_authenticate_with name: "NodeBomb", password: "NodeBomb#2015", except: :create
  
  def index
    @developers = Developer.all.order(created_at: :desc)
    respond_to do |format|
      format.html
      format.csv{ send_data @developers.to_csv }
    end
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