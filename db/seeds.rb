puts "Started seed"
puts "Emptying DB!"

Task.destroy_all

10.times do
  note = Task.new(name: Faker::HowIMetYourMother.catch_phrase)

  puts "#{note.name} saved!" if note.save
end

puts "Seeding finished!"
