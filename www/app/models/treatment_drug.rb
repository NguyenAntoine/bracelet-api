class TreatmentDrug < ApplicationRecord
  belongs_to :treatment
  belongs_to :drug

end
