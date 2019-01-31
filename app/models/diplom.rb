class Diplom < ApplicationRecord
    has_many :doctors
    has_many :specialties

end
