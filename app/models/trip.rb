class Trip < ApplicationRecord
    belongs_to :user

    scope :current_trips, -> {where("start_date <= ? and end_date >= ?", Date.today,Date.today)}
    scope :past_trips, -> {where("start_date < ? and end_date < ?", Date.today, Date.today)}
    scope :upcoming_trips, -> {where("end_date > ? and start_date > ?", Date.today, Date.today)}
    scope :belongs_to_user, ->(usr) {where(user_id: usr.id)}
end