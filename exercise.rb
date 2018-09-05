require "httparty"

#exercise 1

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/?limit=50')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

puts "List of Wards:"
toronto_wards_json["objects"].each do |object|
  puts object["name"]
end

#exercise 2

candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/?limit=1000')
candidates_json = JSON.parse(candidates_response.body)

puts "List of Candidates: "
puts " "
candidates_json["objects"].each do |object|
  print object["first_name"]
  print " "
  print object["last_name"]
  puts " "
end
