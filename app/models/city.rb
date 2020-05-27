class City < ApplicationRecord
  has_many :restaurants, dependent: :destroy
end
