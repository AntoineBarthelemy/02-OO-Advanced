require_relative "crop"

class Rice < Crop
  def water!
    return @grains += 5
  end

  def transplant!
    return @grains += 10
  end
end
