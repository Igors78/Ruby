# frozen_string_literal: true

puts 'Врага какого персонажа вы хотите узнать?'
hero = $stdin.gets.encode('UTF-8').chomp

heros_antiheros = {
  'Бэтмен' => 'Джокер',
  'Холмс' => 'Мориарти',
  'Буратино' => 'Карабас-Барабас'
}

heros_antiheros['Моцарт'] = 'Сальери'

heros_antiheros.delete('Моцарт')

if heros_antiheros.key?(hero)
  puts "Враг этого героя: #{heros_antiheros[hero]}"
else
  puts 'Не удалось найти врага'
end

puts heros_antiheros.keys
