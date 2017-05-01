class Vendor < ApplicationRecord
  validates_uniqueness_of :name
  validates_presence_of :name, :email, :store
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/i, allow_blank: true
end
