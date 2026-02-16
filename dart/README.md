# IFSC Lookup API - Dart/Flutter Client

IFSC Lookup is a simple tool for getting information on IFSC codes. It returns information on various IFSC codes.

[![pub package](https://img.shields.io/pub/v/apiverve_ifsclookup.svg)](https://pub.dev/packages/apiverve_ifsclookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [IFSC Lookup API](https://apiverve.com/marketplace/ifsclookup?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_ifsclookup: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_ifsclookup/apiverve_ifsclookup.dart';

void main() async {
  final client = IfsclookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'ifsc': 'SBIN0005943'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
    "swift": ""
  }
}
```

## API Reference

- **API Home:** [IFSC Lookup API](https://apiverve.com/marketplace/ifsclookup?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/ifsclookup](https://docs.apiverve.com/ref/ifsclookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
