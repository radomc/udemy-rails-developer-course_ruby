require 'json'

class User
  attr_accessor :name, :email, :permissions

  def initialize(*args)
    @name = args[0]
    @email = args[1]
    @permissions = User.pefmissions_from_template
  end

  def self.pefmissions_from_template
    file = File.read 'user_permissions_template.json'
    JSON.load(file, nil, symbolize_names: true)
  end

  def save
    self_json = {
      email: @email,
      name: @name,
      permissions: @permissions
    }.to_json
    open('users.json', 'a') do |file|
      file.puts self_json
    end
  end

end
