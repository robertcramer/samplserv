require "httparty"
require "pry"

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def better(options={})
    SamplParty.post("/better", :body => options)
  end

  def after(options={})
    SamplParty.post("/after", :body => options)
  end

  def stop
    SamplParty.get("/stop")
  end
end

binding.pry

