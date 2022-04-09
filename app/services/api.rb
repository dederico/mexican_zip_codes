class CodigoAPI

  include HTTParty


  BASE_URL = "https://api.copomex.com"
  API_PARTIAL_URL = "api-key=#{ENV['COPOMEX_API_KEY']}"

  def query 
    request = HTTParty.get(BASE_URL+@search_format+API_PARTIAL_URL).to_json
    @request_hash = JSON.parse(request)
  end

  def initialize(user_search_input)
    @search_format = "/codigos/search?q=#{user_search_input}"
  end

  def print_titles
    @request_hash["codigos"].each do |codigo|
      puts codigo["titulo"]
    end
  end

  def codigos_array
    @request_hash["codigos"]
  end

  def codigos_hash
    @request_hash
  end

  def codigos_hash_by_id(id)
    @request_hash["codigos"][id]
  end

  def codigos_hash_by_titulo(titulo)
    @request_hash["codigos"].each do |codigo|
      if codigo["titulo"] == titulo
        return codigo
      end
    end
  end

  
end

