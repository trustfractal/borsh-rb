# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Borsh::Bool do
  it 'serializes true' do
    expect(described_class.new(true).to_borsh).to eq([1].map(&:chr).join)
  end
  it 'serializes false' do
    expect(described_class.new(false).to_borsh).to eq([0].map(&:chr).join)
  end
end
