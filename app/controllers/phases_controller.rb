class PhasesController < ApplicationController
  before_action :authenticate_user!
       def create
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.create(phase_params)
        @user =User.find(@phase.managerid)
        UserMailer.with(user: @user,phase: @phase,lead: @lead).welcome_email.deliver_now
        redirect_to lead_path(@lead)
       end
    
       def edit
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.find(params[:id])
      end
    
      def update
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.find(params[:id])
    
        if @phase.update(phase_params)
          redirect_to @lead
        else
          render :edit
        end
      end

       def destroy
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.find(params[:id])
        @phase.destroy
        redirect_to lead_path(@lead)
      end
      def addengineer
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.find(params[:id])
      end

      def postengineer
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.find(params[:id])
        @phase.user_phases.create(user_id: params[:user])
        redirect_to addengineer_lead_phase_path(@lead)
      end


      def buttonview
      end
      def acceptComment
        @lead = Lead.find(params[:lead_id])
        @phase = @lead.phases.find(params[:id])
        @phase.update(status: 1)
        redirect_to lead_path(@lead)
      end
      private
        def phase_params
          params.require(:phase).permit(:managerid, :name_of_manager,:test_type,:BD_id,:due_date,:status,:lead_id)
        end

end
