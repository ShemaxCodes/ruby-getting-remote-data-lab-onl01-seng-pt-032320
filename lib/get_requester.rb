require 'net/http'
require 'open-uri'

class GetRequester
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
  def get_response_body
    uri = URI.parse(URL)
    response = NET::HTTP.get_response(uri)
    response.body
  end 
  
  def initialize(url)
  end 
  
  def parse_json
    people = JSON.parse(self.get_response_body)
  end
  
  
end 
