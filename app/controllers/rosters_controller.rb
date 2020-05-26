class RostersController < ApplicationController
     before_action :authenticate_user!, except: :top
     
     def top
          render :layout => "before_layout"
     end
     
     def index
          @q = Roster.where(user_id: current_user.id).ransack(params[:q])
          @rosters = @q.result(distinct: true).order(last_furigana:"asc").page(params[:page]).per(10)
          @categories = Category.all
     end
     
     def show
          @roster = Roster.find(params[:id])
     end

     def new
          # @roster = Roster.new
          @categories = Category.all
     end

     def create
          roster = Roster.create(  #image: params["rosters"]["image"],
                                   last_name: params[:rosters][:last_name],
                                   first_name: params[:rosters][:first_name],
                                   last_furigana: params[:rosters][:last_furigana],
                                   first_furigana: params[:rosters][:first_furigana],
                                   gender: params[:rosters][:gender],
                                   birthday: params[:rosters][:birthday],
                                   category_id: params[:rosters][:category_id],
                                   email: params[:rosters][:email],
                                   user_id: current_user.id)
          roster.age = (Date.today.strftime("%Y%m%d").to_i - roster.birthday.strftime("%Y%m%d").to_i)/10000
          roster.save
          redirect_to "/rosters"
     end

     def edit
          @roster = Roster.find(params[:id])
          @categories = Category.all
     end

     def update
          roster = Roster.find(params[:id])
          roster.update( # roster.image = params["rosters"]["image"],
                         last_name: params[:rosters][:last_name],
                         first_name: params[:rosters][:first_name],
                         last_furigana: params[:rosters][:last_furigana],
                         first_furigana: params[:rosters][:first_furigana],
                         gender: params[:rosters][:gender],
                         birthday: params[:rosters][:birthday],
                         category_id: params[:rosters][:category_id],
                         email: params[:rosters][:email],
                         attendance: params[:rosters][:attendance],
                         remarks: params[:rosters][:remarks])
          roster.age = (Date.today.strftime("%Y%m%d").to_i - roster.birthday.strftime("%Y%m%d").to_i)/10000
          roster.save
          redirect_to "/rosters/" + params[:id].to_s + "/show"
     end

     def destroy
          roster = Roster.find(params[:id])
          roster.destroy
          redirect_to "/rosters"
     end
end