class LeadsController < ApplicationController
  before_action :authenticate_user!
  def index
    @leads = Lead.all
  end

  def show
    @lead = Lead.find(params[:id])
  end
  def new
    @lead = Lead.new
  end
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      redirect_to @lead
    else
      render :new
    end
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])

    if @lead.update(lead_params)
      redirect_to @lead
    else
      render :edit
    end
  end

  def getproject
  end
  
  def postproject
    @lead = Lead.find(params[:id])
    @user = User.find(params[:user])
    @lead.create_pro_ject(name_of_project: @lead.project_name,managerid: params[:user],name_of_manager: @user.name)
    redirect_to lead_path(@lead)
  end
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy

    redirect_to root_path
  end
  private
    def lead_params
      params.require(:lead).permit(:userid,:project_name,:client_name,:client_address,:client_email,:client_contact,:platform_used,:test_type,:user_id,:status)
    end
end
