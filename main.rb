require_relative 'lib/movies_collection'

puts "Программа «Фильм на вечер». Soldatkin™Lab 2018. v.2.3 \n\n"

collection = MoviesCollection.new('data/movies/', '*txt')
num = 1

puts "В коллекции есть фильмы следующих режиссёров:\n\n"
collection.directors.each do |item|
  puts "#{num}.#{item}"
  num += 1
end

puts "\nВведите номер режиссёра, фильм которого Вы хотите посмотреть:"
choice = STDIN.gets.to_i

until choice.between?(1, 5)
  puts "Пожалуйста, будьте внимательны: требуется ввести номер от 1 до 5"
  choice = STDIN.gets.to_i
end

puts 'Сегодня вечером рекомендую посмотреть фильм:'
puts collection.get_movie(choice).to_s
