class Hotel

  attr_reader :name, :hotelRating, :address1, :lowRate, :highRate

  def initialize args
    args.each do |k,v|
      key = k.to_s.delete("@")
      instance_variable_set("@#{key}",v) unless v.nil?
    end
  end

  def to_s
    "#{@name}, Rating: #{hotelRating}, Street Address: #{address1}, Price Range: #{lowRate}-#{highRate} \n\n"
  end
end


