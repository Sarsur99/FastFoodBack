class Restaurant < ApplicationRecord
    has_many :reviews

    before_create :slugger

    def slugger
        self.slug = name.parameterize
    end

    def avg_score
        return 0 unless reviews.count.positive?
        reviews.average(:score).round(2).to_f
    end
end

# .round(2).to_f