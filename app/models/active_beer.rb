class ActiveBeer < ActiveRecord::Base
  belongs_to :Location
  belongs_to :Beer
end
