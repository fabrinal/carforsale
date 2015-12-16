class Brand < ActiveRecord::Base
  has_many :types, dependent: :destroy
end
