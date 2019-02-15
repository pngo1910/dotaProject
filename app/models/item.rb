# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :hero

  validates :name, presence: true
end
