# Pseudo-code:
# 1. Print welcome
# 2. Get horses
# 3. Get user's bet
# 4. Run the race
# 5. Print results
bank = 100
while bank > 0
  puts "Welcome welcome to another exciting horse race!"

  horses = {
    "bernardo" => 5.0,
    "keith" => 10.5,
    "johno" => 1.01,
    "silver bullet" => 100.0
  }

  puts "The horses running are"
  horses.each do |horse, odds|
    puts "#{horse.capitalize} @ #{odds}"
  end

  puts "Which horse will be your stable bet?"
  horse = gets.chomp.downcase
  puts "What is the amount of your bet in pounds?"
  amount = gets.chomp.to_i
  puts "You bet £#{amount} on #{horse.capitalize}"
  bank = bank - amount

  sleep(2)
  winner = horses.keys.sample.downcase

  if winner == horse
    amount_won = amount * horses[horse]
    bank = bank + amount_won
    puts "You won! £#{amount_won} was added to your bank. Current bank balance = £#{bank}"
  elsif horses.include? horse
    puts "You lose £#{amount}! :( The winner was #{winner.capitalize}. Current bank balance = £#{bank}"
  else
    puts "You owe me double for betting on a ghost horse!"
  end
end
