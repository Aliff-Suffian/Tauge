require 'bcrypt'
class Teacher < ActiveRecord::Base
    include BCrypt
    def password 
        @password||=Password.new(password_digest)
    end

    def password=(new_password)
        @password = Password.create(new_password)
        self.password_digest = @password
    end

    has_many :courses 
end