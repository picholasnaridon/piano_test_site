class Topic < ApplicationRecord
  extend FriendlyId
  friendly_id :name
  has_many :articles
end
