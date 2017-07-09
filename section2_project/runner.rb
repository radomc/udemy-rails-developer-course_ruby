require 'pp'
require_relative 'user'

first_user = User.new('Radoslav', 'radoslav.petrov@example.com')

pp first_user

first_user.save


second_user = User.new('John', 'john.doe@example.com')
second_user.save