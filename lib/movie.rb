# Класс, принимающий на вход путь к файлу
class Movie
  attr_reader :title, :director, :year

  def self.from_file(file_path)
    file = File.new(file_path, 'r:UTF-8')
    line = file.readlines
    file.close

    new(line[0].chomp, line[1].chomp, line[2].chomp)
  end

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def to_s
    "«#{title}», снятый в #{year} году, режиссёр - #{director}"
  end
end
