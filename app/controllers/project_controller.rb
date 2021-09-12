class ProjectController < ApplicationController
  before_action :authenticate_user!
  def index
    @project =ProJect.all
  end
end
