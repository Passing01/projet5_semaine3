#!/usr/bin/env ruby

require 'fileutils'

# Vérifiez si un argument est fourni, sinon affichez les instructions
if ARGV.length != 1
  puts "Usage: ruby mkdiruby.rb [directory_name]"
  exit
end

# Récupérez le nom du répertoire à partir des arguments
dir_name = ARGV[0]

# Créez le répertoire
FileUtils.mkdir(dir_name) unless File.exist?(dir_name)

# Déplacez-vous dans le nouveau répertoire
Dir.chdir(dir_name)

# Créez le fichier Gemfile avec les gems de TS4A
gemfile_content = <<~GEMFILE
source 'https://rubygems.org'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'data_mapper'
gem 'dm-postgres-adapter'
gem 'dm-validations'
gem 'rspec'
gem 'rack-test'
gem 'shotgun'
gem 'pry'
gem 'faker'
GEMFILE

File.write('Gemfile', gemfile_content)

# Initialisez Git
system('git init')

# Créez le fichier .env et ajoutez-le au .gitignore
File.open('.env', 'w') {}
File.open('.gitignore', 'w') do |file|
  file.puts('.env')
end

# Créez le dossier lib
FileUtils.mkdir('lib')

# Initialisez rspec
system('rspec --init')

# Créez le fichier Readme.md
readme_content = <<~README
# #{dir_name}

C'est un programme Ruby.
README

File.write('Readme.md', readme_content)

puts "Le répertoire #{dir_name} a été créé avec succès !"
