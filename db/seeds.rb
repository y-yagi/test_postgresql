# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_big_data
  random_array = []
  100000.times { |_|  random_array << SecureRandom.hex(30) }
  random_array << 'test'
  ArrayTest.create!(
    string_array: random_array,
    string_array_with_index: random_array,
    integer_array: (1..100).to_a,
    boolean_array: [true, false, true],
    date_array: [Date.yesterday, Date.today, Date.tomorrow],
    date_time_array: [Time.now]
  )
  # ArrayTest.where("string_array_with_index @> ARRAY[?]::varchar[]", ["test"]).count
end

def create_many_data
  100.times do |i|
    random_array =  ["abc", "test#{i}", "def"]
    ArrayTest.create!(
      string_array: random_array,
      string_array_with_index: random_array,
      integer_array: (1..100).to_a,
      boolean_array: [true, false, true],
      date_array: [Date.yesterday, Date.today, Date.tomorrow],
      date_time_array: [Time.now]
    )
  end
end

create_many_data
