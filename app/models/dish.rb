class Dish < ApplicationRecord
    belongs_to :menu, optional: true
end
