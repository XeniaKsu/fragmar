class Purchase < ApplicationRecord
  belongs_to :listing
  belongs_to :buyer
end
