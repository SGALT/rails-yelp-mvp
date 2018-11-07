puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end

puts 'Finished!'
