class Borsh::Optional
  def self.of(type)
    new(type)
  end

  attr_reader :type

  private

  def initialize(type)
    @type = type
  end
end
