class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :neighborhood, :address, :price, :category, :scene, :food, :comments, :user_id, :editable

  def editable
    scope == object.user
  end
end
