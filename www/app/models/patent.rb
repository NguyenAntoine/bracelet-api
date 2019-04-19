class Patent < ApplicationRecord
  has_many :diseases
  has_many :treatments

  has_many :treatment_drugs, through: :treatments
  has_many :drugs, through: :treatment_drugs
end
