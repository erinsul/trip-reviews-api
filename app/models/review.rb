class Review < ActiveRecord::Base
  belongs_to :profile, inverse_of: :reviews
  belongs_to :place, inverse_of: :reviews
end
