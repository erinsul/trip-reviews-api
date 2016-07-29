class Trip < ActiveRecord::Base
  belongs_to :profile, inverse_of: :trips
  belongs_to :place, inverse_of: :trips
  belongs_to :tag, inverse_of: :trips
end
