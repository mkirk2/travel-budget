
class Currency 
    def self.latest
        HTTParty.get(ENV["CURRENCY_API_URL"] + "latest?" + "access_key=#{ENV['CURRENCY_API']}")
    end
end