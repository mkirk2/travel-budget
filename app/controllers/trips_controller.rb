class TripsController < ApplicationController

    def index
    end
    def create
        @trip = Trip.new(trip_params)
        @trip.user_id = current_user.id
        @trip.save
        redirect_to "/current_trip"
    end
    def show
        @trip = Trip.find(params[:id])
    end
    def edit
        
    end
    def new_trip
    end
    def current_trip
        Trip.where("start_date <= ? and end_date >= ?", Date.today,Date.today)
    end
    def past_trips
    end

    private
    def trip_params
        params.require(:trip).permit(:name, :budget, :start_date, :end_date, :daily_budget, :total_days)
    end
end
