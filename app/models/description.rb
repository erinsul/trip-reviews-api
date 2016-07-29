class Description < ActiveRecord::Base
  belongs_to :trip, inverse_of: :descriptions
  belongs_to :tag, inverse_of: :descriptions
end
