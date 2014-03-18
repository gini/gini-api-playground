# Gini API Playground

Collection of example scripts to show some of the capabilities of the Gini API.

## Installation

```
git clone https://github.com/gini/gini-api-playground.git
cd gini-api-playground
bundle install --path vendor/bundle
```

## Run examples

```
GINI_CLIENT_ID=[secret] GINI_CLIENT_SECRET=[secret] GINI_API_USER=you@gini.net GINI_API_PASS=[secret] bin/get_extractions.rb

Some metadata

ID         : d3a5dbb0-aeb6-11e3-9a52-0201dba4ed64
Origin     : UPLOAD
Pages      : 3
Progress   : COMPLETED

Extraction samples

Doctype    : Invoice
IBAN       : DE97360100430595900430
BIC        : PBNKDEFF
Amount     : 1039.87:EUR
InvoiceId  : 2100000470
CustomerId : 1000020003
Company    : Deutsche Telekom AG
Date       : 2005-10-20
```

## Resources

- Gini API overview: [https://www.gini.net/api/](https://www.gini.net/api/)
- Gini API documentation: [http://developer.gini.net/gini-api/](http://developer.gini.net/gini-api/)
- Gini API Ruby client: [https://github.com/gini/gini-api-ruby](https://github.com/gini/gini-api-ruby)
