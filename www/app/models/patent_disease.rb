class PatentDisease < ApplicationRecord
  belongs_to :patent
  belongs_to :disease
end
