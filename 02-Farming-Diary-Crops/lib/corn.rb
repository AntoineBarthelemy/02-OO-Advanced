require_relative "crop"
class Corn < Crop
  def water!
    return @grains += 10
  end
end
