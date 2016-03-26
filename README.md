# jsonapi

Provides the ability to map fields in an object and call `to_jsonapi`.  This
will allow support for jsonapi.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  jsonapi:
    github: drujensen/jsonapi
    branch: master
```

## Usage

include JSONAPI in a class.  The class needs to have an @id defined.

Next, create a `jsonapi_mapping` for the fields in your object.

```crystal
require "jsonapi"

class Test
  include JSONAPI
  def initialize(@id = 0, @name = "", @body = "")
  end

  jsonapi_mapping({
    name: String,
    body: String
  })
  
end

```

## Development

This is a Work In Progress.

RoadMap:
- support links
- relationships

## Contributing

1. Fork it ( https://github.com/[your-github-name]/jsonapi/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [drujensen](https://github.com/drujensen) Dru Jensen - creator, maintainer
