require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
#pp dog_breeds # pp stands for pretty print.
breeds = dog_breeds['message']


breeds.each do |breed, sub_breed|
  puts "* #{breed}"
  

  if !sub_breed.empty?
    sub_breed.each do |sub_breed|
      puts "  - #{sub_breed}"
    end
  end
end