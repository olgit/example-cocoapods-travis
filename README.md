# Black Duck CoPilot Cocoapods/Travis CI Example
[![Travis CI](https://travis-ci.org/BlackDuckCoPilot/example-cocoapods-travis.svg?branch=test)](https://travis-ci.org/BlackDuckCoPilot/example-cocoapods-travis) [![Black Duck Security Risk](https://copilot-test.blackducksoftware.com/github/repos/BlackDuckCoPilot/example-cocoapods-travis/branches/test/badge-risk.svg)](https://copilot-test.blackducksoftware.com/github/repos/BlackDuckCoPilot/example-cocoapods-travis/branches/test)

Shows a working setup for using Black Duck CoPilot to analyze the risk of project dependencies

## Travis CI setup
The `.travis.yml` script has been modified to upload generated dependency data to Black Duck CoPilot:
```yaml
after_success:
  - bash <(curl -s https://copilot-test.blackducksoftware.com/ci/travis/scripts/upload)
```

