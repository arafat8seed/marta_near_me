class Location < ApplicationRecord
  geocoded_by :my_location
  after_validation :geocode
  #location.rb
  validates :address, presence: true
  validates :city, presence: true
  def my_location
    "#{self.address}, #{self.city}, GA"
  end
def nearby?(lon,lat)
  (self.longitude-lon).abs < 0.01 &&(self.latitude-lat).abs< 0.01

end

end
