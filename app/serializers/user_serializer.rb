class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email
  # has_many :properties, serializer: PropertySerializer

  attribute :properties do |user|
    user.properties.map do |property| 
      {
        name: property.name, 
        address: property.address,
        city: property.city,
        state: property.state,
        zip: property.zip,
        bedrooms: property.bedrooms,
        bathrooms: property.bathrooms,
        image: property.image,
        occupied?: property.occupied?,
        pets_allowed?: property.pets_allowed?,
        rent_amount: property.rent_amount,
      }
    end
  end
end
