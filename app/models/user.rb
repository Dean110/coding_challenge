class User < ApplicationRecord
    validates :username, uniqueness: { message: ": %{value} is already in use."}

    has_many :problem_infos
end
