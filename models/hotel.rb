class Hotel

  attr_reader :name

  def initialize args
    args.each do |k,v|
      key = k.to_s.delete("@")
      instance_variable_set("@#{key}",v) unless v.nil?
    end
  end

  def to_s
    "Name: #{name} | Rating: #{hotelRating} | Street Address: #{address1} | Price Range: #{lowRate}-#{highRate}"
  end
end


