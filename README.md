# projet5_semaine3

                           Descryptions des exercices
            mkdiruby.rb

require 'fileutils' : Cette ligne charge la bibliothèque fileutils, qui contient des méthodes utiles pour manipuler les fichiers et les répertoires.
if ARGV.length != 1 : Vérifie si le nombre d'arguments fournis par l'utilisateur n'est pas égal à 1.
puts "Usage: ruby mkdiruby.rb [directory_name]" : Affiche un message d'utilisation expliquant comment utiliser le script.
exit : Arrête l'exécution du script.
dir_name = ARGV[0] : Récupère le nom du répertoire à partir du premier argument fourni par l'utilisateur.
FileUtils.mkdir(dir_name) unless File.exist?(dir_name) : Crée un nouveau répertoire avec le nom fourni, sauf si le répertoire existe déjà.
Dir.chdir(dir_name) : Change le répertoire courant pour le nouveau répertoire créé.
gemfile_content = <<~GEMFILE : Crée une chaîne de caractères multilignes contenant le contenu du fichier Gemfile.
File.write('Gemfile', gemfile_content) : Écrit le contenu du Gemfile dans un fichier nommé Gemfile dans le répertoire courant.
system('git init') : Exécute la commande git init dans le terminal pour initialiser un nouveau dépôt Git dans le répertoire courant.
File.open('.env', 'w') {} : Crée un fichier nommé .env vide dans le répertoire courant.
File.open('.gitignore', 'w') do |file| : Crée un fichier nommé .gitignore et ouvre-le en mode écriture.
file.puts('.env') : Ajoute la chaîne .env au fichier .gitignore pour ignorer le fichier .env dans Git.
FileUtils.mkdir('lib') : Crée un répertoire nommé lib dans le répertoire courant.
system('rspec --init') : Exécute la commande rspec --init dans le terminal pour initialiser les fichiers de configuration de RSpec.
readme_content = <<~README : Crée une chaîne de caractères multilignes contenant le contenu du fichier Readme.md.
File.write('Readme.md', readme_content) : Écrit le contenu du Readme.md dans un fichier nommé Readme.md dans le répertoire courant.
puts "Le répertoire #{dir_name} a été créé avec succès !" : Affiche un message de confirmation indiquant que le répertoire a été créé avec succès.
Ce script automatise la création d'un nouveau projet Ruby en suivant les étapes décrites dans l'énoncé, comme la création du répertoire, l'initialisation de Git, la création du fichier Gemfile, etc.

              google_research.rb


require 'launchy' : Cette ligne charge la bibliothèque launchy, qui permet d'ouvrir des URL dans le navigateur web par défaut.
if ARGV.empty? : Vérifie si aucun argument n'a été fourni à l'exécution du script.
puts "Usage: ruby google_searcher.rb [search query]" : Affiche un message d'utilisation expliquant comment utiliser le script.
exit : Arrête l'exécution du script.
query = ARGV.join('+') : Récupère les arguments fournis par l'utilisateur et les joint en une chaîne de caractères en remplaçant les espaces par le symbole +, ce qui permet de former une requête de recherche valide pour l'URL de Google.
url = "https://www.google.com/search?q=#{query}" : Construit l'URL de recherche Google en utilisant la requête de recherche récupérée précédemment.
Launchy.open(url) : Ouvre l'URL de recherche Google dans le navigateur web par défaut en utilisant la méthode open de la bibliothèque launchy.
Ce script permet d'effectuer une recherche Google rapidement en ouvrant directement l'URL de recherche dans le navigateur web par défaut. Il prend en entrée une requête de recherche sous forme d'arguments et construit l'URL correspondante avant de l'ouvrir. Si aucun argument n'est fourni, le script affiche un message d'utilisation et s'arrête.