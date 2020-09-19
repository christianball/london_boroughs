# frozen_string_literal: true

FactoryBot.define do
  factory :borough do
    name { 'Something' }
    designation  { 'Outer' }
    population  { 100_000 }
    website { 'https://www.london.gov.uk/' }
  end
end
