# frozen_string_literal: true

class Hero < ApplicationRecord
  belongs_to :player

  has_many :abilities
  has_many :items

  validates :name, presence: true
end
