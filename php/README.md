# IFSC Lookup API - PHP Package

IFSC Lookup is an IFSC code search API that verifies Indian bank branch details from any IFSC code, returning the bank name, branch, street address, city, district and state, plus the state's ISO code and the bank and branch codes. Paid plans add MICR, SWIFT and the NEFT, RTGS, IMPS and UPI flags.

## Installation

Install via Composer:

```bash
composer require apiverve/ifsclookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Ifsclookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ifsc' => 'SBIN0005943']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Ifsclookup\Client;
use APIVerve\Ifsclookup\Exceptions\APIException;
use APIVerve\Ifsclookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['ifsc' => 'SBIN0005943']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ifsclookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ifsclookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ifsclookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
