class Restaurant < ApplicationRecord
    has_many :reviews

    before_create :slugger

    def slugger
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
