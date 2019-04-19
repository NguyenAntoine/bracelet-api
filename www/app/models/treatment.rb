class Treatment < ApplicationRecord
  belongs_to :patent
  has_many :treatment_drugs

  has_many :drugs, through: :treatment_drugs
end
