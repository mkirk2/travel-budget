class TripsController < ApplicationController

    def index
        @current_trips = Trip.belongs_to_user(current_user).current_trips
        @past_trips = Trip.belongs_to_user(current_user).past_trips
        @upcoming_trips = Trip.belongs_to_user(current_user).upcoming_trips
    end
    def create
        @trip = Trip.new(trip_params)
        @trip.user_id = current_user.id
        @trip.save
        redirect_to "/trips"
    end
    def show
        @trip = Trip.find(params[:id])
    end
    def edit
    end
    def new_trip
    end

    private
    def trip_params
        params.require(:trip).permit(:name, :budget, :start_date, :end_date, :daily_budget, :total_days)
    end
end
