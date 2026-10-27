Pod::Spec.new do |s|
  s.name             = 'APIVerveIFSCLookup'
  s.version          = '1.2.3'
  s.summary          = 'IFSC Lookup is an IFSC code search API that verifies Indian bank branch details from any IFSC code, returning the bank name, branch,...'
  s.description      = <<-'DESC'
IFSC Lookup is an IFSC code search API that verifies Indian bank branch details from any IFSC code, returning the bank name, branch, street address, city, district and state, plus the state's ISO code and the bank and branch codes. Paid plans add MICR, SWIFT and the NEFT, RTGS, IMPS and UPI flags.

This iOS/macOS SDK provides a convenient way to access the IFSC Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/ifsclookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/ifsclookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveIFSCLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
