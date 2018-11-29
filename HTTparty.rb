require 'HTTParty'

# GET

# response = HTTParty.get('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup')
# puts "response code : #{response.code}"
# puts "response message : #{response.message}"
# puts "response headers : #{response.headers}"
# puts "response body : #{response.body}"


# POST:
response = HTTParty.post('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup',
            :body => {"nome":"testeED", "cidade":"Recife"})

puts "response code : #{response.code}"
puts "response message : #{response.message}"
puts "response headers : #{response.headers.inspect}"
puts "response body : #{response.body}"


# response = HTTParty.delete('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup/30')
# puts "response code : #{response.code}"
# puts "response message : #{response.message}"
# puts "response headers : #{response.headers.inspect}"
# puts "response body : #{response.body}"


# DELETE TUDO
# i=180   

# while i<190 do
#     response = HTTParty.delete('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup/'+i.to_s)
#     puts "response code : #{response.code}"
#     puts "----------------------------------"
#     i=i+1
# end
