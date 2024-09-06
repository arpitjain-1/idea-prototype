class District < ApplicationRecord
  belongs_to :state
  has_many :heritage_models
end
