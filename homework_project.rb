dial_book = {
  'Sofia' => '1000',
  'Plovdiv' => '2000',
  'Stara Zagora' => '3000',
  'Karlovo' => '1221',
  'Dimitrovgrad' => '6400',
  'Haskovo' => '5498',
  'Ahtopol' => '3452',
  'Burgas' => '3251',
  'Varna' => '3442',
  'Montana' => '4220'
}

def city_names(dial_book)
  dial_book.each { |k, _v| puts k }
end

def city_code(dial_book, city_name)
  dial_book[city_name]
end

loop do
  puts 'Cities: '
  city_names(dial_book)

  puts 'Please enter a city name to view its postal code'
  user_city = gets.chomp

  user_city_code = city_code(dial_book, user_city)
  result = user_city_code ? "The postal code is: #{user_city_code}" : 'Wrong input'
  puts result

  puts '------------------------------------------------'
end