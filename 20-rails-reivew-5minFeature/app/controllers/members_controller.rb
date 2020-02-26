class MembersController < ApplicationController


    def index 
        @members = Member.all
    end

    def show
        @member = Member.find(params[:id])
    end
    
    def new
        @member = Member.new
    end

    def create

        @member = Member.create(member_params)
        if @member.valid?  
            redirect_to member_path(@member) 
        else 
            flash[:notice] = @member.errors.full_messages
            render :new 
        end

    end

    private
    def member_params
        params.require(:member).permit(:name, orchestra_ids: [])
    end


end
