class Borsh::Bool
  def initialize(value)
    @value = value
  end

  def to_borsh
    Borsh::Integer.new(value ? 1 : 0, :u8).to_borsh
  end

  private

  attr_reader :value
end
