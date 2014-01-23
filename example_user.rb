class User
  attr_accessor :first, :last, :email

  def initialize(attributes = {})
    @first  = attributes[:first]
    @last  = attributes[:last]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end