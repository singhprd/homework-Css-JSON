class WordFormatter

  def initialize( hash )
    @hash = hash
  end

  def postcode_upcase()
    return @hash[:postcode].upcase
  end

  def camelcase_building
    return @hash[:building].capitalize
  end
end