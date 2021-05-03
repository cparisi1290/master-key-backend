# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
# killua = User.create(name: "Killua", email: "killua@email.com", password: "password")

# PROPERTIES
# rancho_vista = Property.create(name: "Rancho Vista", address: "7141 E Rancho Vista Dr UNIT 6007", city: "Scottsdale", state: "AZ", zip: "85251", bedrooms: "2", bathrooms: "2", image: "https://photos.zillowstatic.com/fp/03617c7908c11cc0caaffab616f347e8-cc_ft_1152.jpg", occupied?: "yes", pets_allowed?: "yes", rent_amount: "2330",  user_id: 1)

# arcadia= Property.create(name: "Arcadia", address: "4351 N 36th St", city: "Phoenix", state: "AZ", zip: "85018", bedrooms: "3", bathrooms: "3", image: "https://photos.zillowstatic.com/fp/b2858d22981a3072f59c4fad836b363a-cc_ft_1152.jpg", occupied?: "yes", pets_allowed?: "yes", rent_amount: "2650",  user_id: 1)

# mark_way= Property.create(name: "Mark Way", address: "6231 E Mark Way UNIT 37", city: "Cave Creek", state: "AZ", zip: "85331", bedrooms: "2", bathrooms: "3", image: "https://photos.zillowstatic.com/fp/3e7bec43719af4f3ddf8de9da5a6cded-uncropped_scaled_within_1536_1152.webp", occupied?: "no", pets_allowed?: "no", rent_amount: "2100",  user_id: 1)

# REPAIRS
    garbage_disposal = Repair.create(room: "Kitchen", broken_item: "Garbage disposal", cost: "400", date_completed: "null", closed?: "no", property_id: 1)

    water_heater = Repair.create(room: "Basement", broken_item: "Water heater", cost: "1000", closed?: "no", date_completed: "null", property_id: 1)

    sink_leak = Repair.create(room: "Kitchen", broken_item: "Sink leaks", cost: "200", date_completed: "null", closed?: "no", property_id: 2)

    broken_window = Repair.create(room: "Living Room", broken_item: "Window", cost: "800", date_completed: "null", closed?: "no",  property_id: 3)

