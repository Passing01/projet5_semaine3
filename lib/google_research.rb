require   'launchy'

# Vérifiez si un argument est fourni, sinon affichez les instructions
if ARGV.empty?
    puts "Usage: ruby google_research.rb [search query]"
    exit
end
# Récupérez la requête de recherche à partir des arguments
query = ARGV.join('+')
# Construisez l'URL de recherche Google
url = "https://www.google.com/search?q=#{query}"
# Ouvrez l'URL dans le navigateur par défaut à l'aide de la gem Launchy
Launchy.open(url)
