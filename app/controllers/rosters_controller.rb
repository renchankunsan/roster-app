class RostersController < ApplicationController
     def index
          if params[:find]
               @rosters = Roster.where(['last_name LIKE ? OR first_name LIKE ? OR last_furigana LIKE ? OR first_furigana LIKE ?',
               "%#{params[:find]}%", "%#{params[:find]}%", "%#{params[:find]}%", "%#{params[:find]}%"]).order("last_furigana")
          else
               @rosters = Roster.all.order("last_furigana")
          end
     end
     
     def show
          @roster = Roster.find(params["id"])
     end
     
     def new
     end
     
     def create
          Roster.create(last_name:params["rosters"]["last_name"],first_name:params["rosters"]["first_name"],
          last_furigana:params["rosters"]["last_furigana"],first_furigana:params["rosters"]["first_furigana"],
          gender:params["rosters"]["gender"],birthday:params["rosters"]["birthday"],email:params["rosters"]["email"])
          redirect_to "/"
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
          roster.gender = params["rosters"]["gender"]
          roster.birthday = params["rosters"]["birthday"]
          roster.email = params["rosters"]["email"]
          roster.save
          redirect_to "/"
          
     end
     
     def destroy
          roster = Roster.find(params["id"])
          roster.destroy
          redirect_to "/"
     end
end