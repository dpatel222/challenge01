require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) 

count = 0
trees.each do |tree|
    if tree["common_name"].match("ash")
        count = count + 1
    end
    
end
puts (count)