class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { ('a'..'z').to_a.sample }

  end

  def score
      @word = params[:word]
      @letters = params[:letters].split

  # 1. Check if the word can be built from the grid
  @word.chars.each do |letter|
    if @word.count(letter) > @letters.count(letter)
      return "The word can't be built out of the original grid"
    end
  end

  # 2. Check if it is a valid English word
  # This part normally uses the dictionary/API provided by the exercise.
  unless english_word?(word)
    return "The word is valid according to the grid, but is not a valid English word"
  end

  # 3. Valid grid + valid English word
  "The word is valid according to the grid and is an English word"
  end


  # def english_word?(word)
  # end
end
