class PropertySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :city, :state, :zip, :bedrooms, :bathrooms, :image, :occupied?, :pets_allowed?, :rent_amount, :user_id
  # has_many :repairs, serializer: RepairSerializer

  attribute :repairs do |property|
    property.repairs.map do |repair| 
      {
        created_at: repair.created_at,
        room: repair.room,
        broken_item: repair.broken_item,
        cost: repair.cost,
        date_completed: repair.date_completed,
        closed?: repair.closed?
      }
    end
  end
end
