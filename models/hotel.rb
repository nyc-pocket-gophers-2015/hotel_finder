class Hotel

  attr_reader :name

  def initialize args
    args.each do |k,v|
      key = k.to_s.delete("@")
      instance_variable_set("@#{key}",v) unless v.nil?
    end
  end
end
