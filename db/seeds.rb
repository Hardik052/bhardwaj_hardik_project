require 'json'
require 'net/http'

# Clear existing data
Author.destroy_all
Quote.destroy_all

# Fetch authors from the API
authors_url = URI.parse('https://quote-garden.onrender.com/api/v3/authors')
authors_response = Net::HTTP.get(authors_url)
authors_data = JSON.parse(authors_response)
authors_data['data'].each do |author_data|
  Author.create(name: author_data['name'])
end

# Fetch quotes from the API
quotes_url = URI.parse('https://quote-garden.onrender.com/api/v3/quotes')
quotes_response = Net::HTTP.get(quotes_url)
quotes_data = JSON.parse(quotes_response)
quotes_data['data'].each do |quote_data|
  author = Author.find_or_create_by(name: quote_data['quoteAuthor'])
  author.quotes.create(content: quote_data['quoteText'])
end
