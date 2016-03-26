require "json"
require "./jsonapi/*"

module JSONAPI
  macro jsonapi_mapping(properties)
    {% for key, value in properties %}
      {% properties[key] = {type: value} unless value.is_a?(HashLiteral) %}
    {% end %}
    

    def to_jsonapi
      String.build do |str|
        to_jsonapi str
      end
    end

    def to_jsonapi(io)
      io.json_object do |root|
        root.field "data" do
          io.json_array do |data|
            
            data << { 
              "type": "{{ @type.name.downcase.id }}", 
              "id": @{{"id".id}},
              "attributes": {
              {% for key, value in properties %}
                "{{key.id}}": @{{key.id}},
              {% end %}
              }
            }
          end
        end
      end
    end
  end
end
