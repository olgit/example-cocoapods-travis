# Black Duck CoPilot Cocoapods/Travis CI Example
[![Travis CI](https://travis-ci.org/BlackDuckCoPilot/example-cocoapods-travis.svg?branch=validation)](https://travis-ci.org/BlackDuckCoPilot/example-cocoapods-travis) [![Black Duck Security Risk](https://copilot-valid.blackducksoftware.com/github/repos/BlackDuckCoPilot/example-cocoapods-travis/branches/validation/badge-risk.svg)](https://copilot-valid.blackducksoftware.com/github/repos/BlackDuckCoPilot/example-cocoapods-travis/branches/master)

Shows a working setup for using Black Duck CoPilot to analyze the risk of project dependencies

## Travis CI setup
The `.travis.yml` script has been modified to upload generated dependency data to Black Duck CoPilot:
```yaml
after_success:
  - bash <(curl -s https://copilot-valid.blackducksoftware.com/ci/travis/scripts/upload)
```

