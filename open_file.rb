if File.exist?('./text/quotes.txt')
  fil = File.new('./text/quotes.txt', 'r:UTF-8')
  content = fil.read
  puts content
else
  puts 'File not found'
end
