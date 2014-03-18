#! /usr/bin/env ruby

require 'gini-api'

api = Gini::Api::Client.new(
  client_id: ENV['GINI_CLIENT_ID'],
  client_secret: ENV['GINI_CLIENT_SECRET'],
  log: Logger.new('/dev/null')
)

api.login(username: ENV['GINI_API_USER'], password: ENV['GINI_API_PASS'])

doc = api.upload("#{File.expand_path(File.dirname(__FILE__))}/../files/test.pdf")

puts "\nSome metadata\n\n"

puts "ID         : #{doc.id}"
puts "Origin     : #{doc.origin}"
puts "Pages      : #{doc.pages.count}"
puts "Progress   : #{doc.progress}"

puts "\nExtraction samples\n\n"

puts "Doctype    : #{doc.extractions[:docType]}"
puts "IBAN       : #{doc.extractions[:iban]}"
puts "BIC        : #{doc.extractions[:bic]}"
puts "Amount     : #{doc.extractions[:amountToPay]}"
puts "InvoiceId  : #{doc.extractions[:invoiceId]}"
puts "CustomerId : #{doc.extractions[:customerId]}"
puts "Company    : #{doc.extractions[:senderName]}"
puts "Date       : #{doc.extractions[:documentDate]}"

api.delete(doc.id)

api.logout

