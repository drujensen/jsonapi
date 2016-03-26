require "./spec_helper"

class Test
  include JSONAPI
  def initialize(@id = 0, @name = "", @body = "")
  end

  jsonapi_mapping({
    name: String,
    body: String
  })
  
end

describe JSONAPI do

  it "should return valid jsonapi results" do
    test = Test.new(0, "Testing", "This should be the body")
    test.to_jsonapi.should eq %({"data":[{"type":"test","id":0,"attributes":{"name":"Testing","body":"This should be the body"}}]})
  end
end
