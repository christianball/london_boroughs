# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Borough do
  subject do
    described_class.new(name: name, designation: designation, population: population, website: website)
  end

  let(:name) { 'Whatever' }
  let(:designation) { 'Inner' }
  let(:population) { 200_000 }
  let(:website) { 'https://www.something.gov.uk' }

  it 'is valid when given valid attributes' do
    expect(subject).to be_valid
  end

  context 'without a name' do
    let(:name) { nil }

    specify { expect(subject).to_not be_valid }
  end

  context 'without a designation' do
    let(:designation) { nil }

    specify { expect(subject).to_not be_valid }
  end

  context 'without a population' do
    let(:population) { nil }

    specify { expect(subject).to_not be_valid }
  end

  context 'without a website' do
    let(:website) { nil }

    specify { expect(subject).to_not be_valid }
  end

  context 'with an invalid designation' do
    let(:designation) { 'bad' }

    specify { expect(subject).to_not be_valid }
  end

  context 'with a population that is not an integer' do
    let(:population) { '100_000' }

    specify { expect(subject).to_not be_valid }
  end

  context 'with a population that is below the allowed range' do
    let(:population) { 0 }

    specify { expect(subject).to_not be_valid }
  end

  context 'with a population that is above the allowed range' do
    let(:population) { 1_000_000 }

    specify { expect(subject).to_not be_valid }
  end
end
