# frozen_string_literal: true

line_width = 50
puts('Вот вам юная мисс из России:'.center(line_width))
puts('Визг её был ужасен по силе.'.center(line_width))
puts('Он разил, как кинжал,-'.center(line_width))
puts('Так никто не визжал,'.center(line_width))
puts('Как визжала та Мисс из России.'.center(line_width))

gets

names = %w[Камень Ножницы Бумага]

computer_choice = rand(3)

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'

user_choice = gets.to_i

puts "Компьютер выбрал: #{names[computer_choice]}"

puts "Вы выбрали: #{names[user_choice]}"

if user_choice == computer_choice
  puts 'Ничья'
elsif user_choice.zero? && computer_choice == 1
  puts 'Победили Вы'
elsif user_choice == 1 && computer_choice == 2
  puts 'Победили Вы'
elsif user_choice == 2 && computer_choice.zero?
  puts 'Победили Вы'
else
  puts 'Победил Компьютер'
end
