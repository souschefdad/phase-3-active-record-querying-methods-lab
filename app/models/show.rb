class Show < ActiveRecord::Base
    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
       most_popular = self.maximum(:rating)
       Show.find_by(most_popular)
    end

end