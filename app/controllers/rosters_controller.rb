class RostersController < ApplicationController
     def index
          @q = Roster.ransack(params[:q])
          @rosters = @q.result(distinct: true).order(last_furigana:"asc").page(params[:page]).per(10)
     end
     
     def show
          @roster = Roster.find(params[:id])
     end

     def new
     end

     def create
          roster = Roster.create(  image: params[:rosters][:image],
                                   last_name: params[:rosters][:last_name],
                                   first_name: params[:rosters][:first_name],
                                   last_furigana: params[:rosters][:last_furigana],
                                   first_furigana: params[:rosters][:first_furigana],
                                   gender: params[:gender],
                                   birthday: params[:rosters][:birthday],
                                   email: params[:rosters][:email])
          roster.age = (Date.today.strftime("%Y%m%d").to_i - roster.birthday.strftime("%Y%m%d").to_i)/10000
          roster.attendance = "未入力"
          roster.save
          redirect_to "/"
     end

     def edit
          @roster = Roster.find(params[:id])
     end

     def update
          roster = Roster.find(params[:id])
          roster.image = params[:rosters][:image]
          roster.last_name = params[:rosters][:last_name]
          roster.first_name = params[:rosters][:first_name]
          roster.last_furigana = params[:rosters][:last_furigana]
          roster.first_furigana = params[:rosters][:first_furigana]
          roster.gender = params[:gender]
          roster.birthday = params[:rosters][:birthday]
          roster.email = params[:rosters][:email]
          roster.attendance = params[:attendance]
          roster.remarks = params[:remarks]
          roster.age = (Date.today.strftime("%Y%m%d").to_i - roster.birthday.strftime("%Y%m%d").to_i)/10000
          roster.save
          redirect_to "/rosters/" + params[:id].to_s + "/show"
     end

     def destroy
          roster = Roster.find(params[:id])
          roster.destroy
          redirect_to "/"
     end
end