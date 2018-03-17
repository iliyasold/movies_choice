require 'rspec'
require 'movies_collection'

describe 'MoviesCollection' do
  let(:collection) do
    MoviesCollection.new('./spec/fixtures/', '*.txt')
  end

  it '#initialize' do
    expect(collection.directors[0]).to eq 'Роберт Земекис'
    expect(
        collection.movies[0].to_s
    ).to eq '«Союзники», снятый в 2016 году, режиссёр - Роберт Земекис'
  end

  it '@directors' do
    expect(collection.directors.size).to eq 2
  end

  it '#get_movie' do
    expect(
        collection.get_movie(1).to_s
    ).to eq "«Форест Гамп», снятый в 1994 году, режиссёр - Роберт Земекис"
  end
end
