# frozen_string_literal: true

require 'pony'

require 'io/console'

my_mail = 'oleinikovsigors@gmail.com'

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = $stdin.noecho(&:gets).chomp

puts 'Кому отправить письмо? Введите адрес:'
send_to = $stdin.gets.chomp

puts 'Что написать в письме?'
body = $stdin.gets.encode('UTF-8').chomp

Pony.mail(
  subject: 'Привет из программы на руби!',
  body: body,
  to: send_to,
  from: my_mail,

  via: :smtp,
  via_options: {
    address: 'smtp.gmail.com',
    port: '587',
    enable_starttls_auto: true,
    user_name: my_mail,
    password: password,
    authentication: :plain
  }
)

puts 'Письмо отправлено!'
