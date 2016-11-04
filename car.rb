class Card

  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

class Deck

  def initialize(trivia_data)
    @cards = []
    trivia_data.each do |question, answer|
      @cards << Card.new(question, answer)
    end
  end

  def remaining_cards
    @cards.length
  end

  def draw_card
    @cards.pop
  end

end



trivia_data = {
  "What is the capital of Illinois? 
  A. Chicago
  B. San Francisco
  C. Springfield" => "C",
  "Is Africa a country or a continent?
  A. country
  B. continent" => "B",
  "Tug of war was once an Olympic event. True or false?
  A. True
  B. False" => "A"
}

correct_answer = 0
incorrect_answer = 0 
deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase != card.answer.downcase
    incorrect_answer += 1
    puts "Incorrect! Try Again"
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      correct_answer += 1
      puts "Correct!"
  else
    incorrect_answer += 1
    puts "Incorrect!"
    end
  else
    correct_answer += 1
    puts "Correct!"
  end
end
puts "Correct Answers:"
puts correct_answer
puts "Incorrect Answers:"
puts incorrect_answer