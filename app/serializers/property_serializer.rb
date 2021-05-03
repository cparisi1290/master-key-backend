class PropertySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :city, :state, :zip, :bedrooms, :bathrooms, :image, :occupied?, :pets_allowed?, :rent_amount, :user_id
  has_many :repairs
end
