class RostersController < ApplicationController
     def index
          @q = Roster.ransack(params[:q])
          @rosters = @q.result(distinct: true).order(last_furigana:"asc")
     end
     
     def show
          @roster = Roster.find(params["id"])
     end
     
     def new
     end
     
     def create
          @roster = Roster.create(last_name:params["rosters"]["last_name"],first_name:params["rosters"]["first_name"],
          last_furigana:params["rosters"]["last_furigana"],first_furigana:params["rosters"]["first_furigana"],
          gender:params[:gender],birthday:params["rosters"]["birthday"],email:params["rosters"]["email"])

          @roster.age = (Date.today.strftime("%Y%m%d").to_i - @roster.birthday.strftime("%Y%m%d").to_i)/10000

          if @roster.save
               redirect_to "/"
          else
               render "new"
          end
     end
     
     def edit
          @roster = Roster.find(params["id"])
     end
     
     def update
          roster = Roster.find(params["id"])
          roster.last_name = params["rosters"]["last_name"]
          roster.first_name = params["rosters"]["first_name"]
          roster.last_furigana = params["rosters"]["last_furigana"]
          roster.first_furigana = params["rosters"]["first_furigana"]
          roster.gender = params[:gender]
          roster.birthday = params["rosters"]["birthday"]
          roster.email = params["rosters"]["email"]
          roster.attendance = params[:attendance]
          roster.remarks = params[:remarks]
          roster.age = (Date.today.strftime("%Y%m%d").to_i - roster.birthday.strftime("%Y%m%d").to_i)/10000
          
          if roster.save
               redirect_to "/"
          else
               render "edit"
          end
     end
     
     def destroy
          roster = Roster.find(params["id"])
          roster.destroy
          redirect_to "/"
     end
end