class TripsController < ApplicationController

    def index
    end
    def create
        @trip = Trip.create(trip_params)
    end
    def show
        @trip = Trip.find(params[:id])
    end
    def edit
        
    end
    def new_trip
    end
    def current_trip
    end
    def past_trips
    end

    private
    def trip_params
        params.require(:trip).permit(:name, :budget, :start_date, :end_date)
    end
end
