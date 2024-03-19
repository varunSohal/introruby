class DeviceDog < ApplicationRecord
  belongs_to :device
  belongs_to :dogs
end
