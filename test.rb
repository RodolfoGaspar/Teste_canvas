# /api/v1/users/self/profile?access_token=7~qK0CtUIJ66Lfb6rJhAD3gDybSDwl2RGNOzyUfPcXNY7UQz5jQfzruC5Zs4FqLTly
https://www.twilio.com/blog/2015/10/4-ways-to-parse-a-json-api-with-ruby.html
require 'rubygems'
require 'json'

JSON.parse("htts://canvas.instructure.com/api/v1/users/self/profile?access_token=7~qK0CtUIJ66Lfb6rJhAD3gDybSDwl2RGNOzyUfPcXNY7UQz5jQfzruC5Zs4FqLTly")

string = '{"desc":{"someKey":"someValue","anotherKey":"value"},"main_item":{"stats":{"a":8,"b":12,"c":10}}}'
parsed = JSON.parse(string) # returns a hash

p parsed["desc"]["someKey"]
p parsed["main_item"]["stats"]["a"]

# Read JSON from a file, iterate over objects
file = open("shops.json")
json = file.read

parsed = JSON.parse(json)

parsed["shop"].each do |shop|
  p shop["id"]
end
