class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  #ingredient can be used in differnet cocktails but unique in the context of
  #one single cocktail
end
