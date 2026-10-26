# IFSC Lookup API - Ruby Gem

IFSC Lookup is an IFSC code search API that verifies Indian bank branch details from any IFSC code, returning the bank name, branch, street address, city, district and state, plus the state's ISO code and the bank and branch codes. Paid plans add MICR, SWIFT and the NEFT, RTGS, IMPS and UPI flags.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_ifsclookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_ifsclookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_ifsclookup'

# Initialize the client
client = APIVerve::Ifsclookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ ifsc: "SBIN0005943" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ifsc: "SBIN0005943" })
  puts response["data"]
rescue APIVerve::Ifsclookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Ifsclookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Ifsclookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "bank": "State Bank of India",
    "ifsc": "SBIN0005943",
    "branch": "KASTURBA GANDHI MARG,NEW DELHI",
    "address": "23, HIMALAYA HOUSE KASTURBA GANDHI MARG NEW DELHI ,PIN - 110001",
    "contact": "",
    "city": "NEW DELHI",
    "district": "NEW DELHI",
    "state": "DELHI",
    "imps": true,
    "rtgs": true,
    "neft": true,
    "upi": true,
    "micr": "110002062",
    "swift": "",
    "centre": "NEW DELHI",
    "iso3166": "IN-DL",
    "bankcode": "SBIN",
    "branchcode": "005943"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ifsclookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ifsclookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ifsclookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
