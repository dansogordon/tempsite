class Developer < ActiveRecord::Base
  validates :email, presence: true
  validates_uniqueness_of :email, :message => '%{value} has already registered.'
end
