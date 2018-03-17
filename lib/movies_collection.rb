require_relative 'movie'

# Класс выбирает фильм для пользователя из собраной коллекции
class MoviesCollection
  attr_reader :directors, :movies, :movie

  def initialize(path, extension)
    files = Dir.glob("#{path}#{extension}")
    @directors = []
    @movies = []

    files.each do |file|
      @movie = Movie.from_file(file)
      @directors << movie.director
      @movies << movie
    end

    @directors.uniq!
  end

  # @return [movie]
  def get_movie(choice)
    movies.select {|movie| movie.director[directors[choice - 1]]}.sample
  end
end
