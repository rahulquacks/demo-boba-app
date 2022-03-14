class Order < ApplicationRecord
  validates :first_name, length: { minimum: 1, maximum: 50 }
  validates :last_name, length: { minimum: 1, maximum: 50  }
  validates :drink, length: { minimum: 1,  maximum: 50 }
  validates :special_instructions, length: { maximum: 50 }

end
