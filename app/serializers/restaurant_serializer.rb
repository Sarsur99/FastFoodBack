class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :slug, :avg_score

  has_many :reviews
end
