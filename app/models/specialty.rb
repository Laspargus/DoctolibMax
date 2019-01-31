class Specialty < ApplicationRecord
has_many :doctors , through: :diploms
has_many :diploms
end
