# frozen_string_literal: true

class Borough < ApplicationRecord

  validates :name,
            presence: true

  validates :designation,
            presence: true,
            inclusion: { in: %w(Inner Outer), message: 'must be either "Inner" or "Outer".' }

  validates :population,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than: 0,
              less_than: 1_000_000,
              message: 'must be greater than zero and less than one million'
            }

  validates :website,
            presence: true

end
