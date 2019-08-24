class SecretHandshake
  def initialize(bin)
    @bin = bin
  end

  def commands
    return [] if @bin.to_s.match(/[^01]/)
    
  end
end