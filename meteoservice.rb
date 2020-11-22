# frozen_string_literal: true

require 'uri'

require 'net/http'

require 'rexml/document'

CLOUDINESS = %w[Ясно Малооблачно Облачно Пасмурно].freeze

uri = URI.parse('https://xml.meteoservice.ru/export/gismeteo/point/9274.xml')

response = Net::HTTP.get_response(uri)

doc = REXML::Document.new(response.body)

city_name = URI.decode_www_form(doc.root.elements['REPORT/TOWN'].attributes['sname'])

forecast = doc.root.elements['REPORT/TOWN/FORECAST']

min_temp = forecast.elements['TEMPERATURE'].attributes['min']
max_temp = forecast.elements['TEMPERATURE'].attributes['max']

max_wind = forecast.elements['WIND'].attributes['max']

clouds_index = forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i
clouds = CLOUDINESS[clouds_index]

puts city_name
puts "Температура — от #{min_temp} до #{max_temp} С"
puts "Ветер #{max_wind} м/с"
puts clouds
