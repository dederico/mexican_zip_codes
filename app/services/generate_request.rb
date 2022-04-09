require 'httparty'
require 'json'

url = "https://api.copomex.com/query/search_cp/660?token=pruebas"
puts "hello"+url  

  # metodo = "search_cp"
  # busqueda = 660
  # token = "250088eb-e610-452a-af99-ffb711869456"
  response = HTTParty.get(url)
  puts url
  result = JSON.parse(response.body)

  puts result
