# frozen_string_literal: true

class Ability < ApplicationRecord
  belongs_to :hero

  validates :name, presence: true
end
