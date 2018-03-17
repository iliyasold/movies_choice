require 'rspec'
require 'movie'

describe 'Movie' do
  let(:movie) { Movie.from_file("./spec/fixtures/test_movie_1.txt") }

  it 'movie data tests' do
    expect(movie.title).to eq 'Форест Гамп'
    expect(movie.director).to eq "Роберт Земекис"
    expect(movie.year).to eq "1994"
  end

  it '#to_s' do
    expect(
        movie.to_s
    ).to eq "«Форест Гамп», снятый в 1994 году, режиссёр - Роберт Земекис"
  end
end
