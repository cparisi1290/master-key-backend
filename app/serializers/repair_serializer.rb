class RepairSerializer
  include FastJsonapi::ObjectSerializer
  attributes :room, :broken_item, :cost, :date_completed, :closed?, :property_id, :property
  belongs_to :property
end
