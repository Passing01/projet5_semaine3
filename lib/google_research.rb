require   'launchy'

if ARGV.empty?
    puts "Usage: ruby google_research.rb [search query]"
    exit
end

query = ARGV.join('+')

url = "https://www.google.com/search?q=#{query}"

Launchy.open(url)
