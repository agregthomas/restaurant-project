class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :neighborhood, :address, :price, :category, :type, :food, :comments
end
