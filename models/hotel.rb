require_relative 'controller'

include Parser

class Hotel

  attr_reader :name

  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}",v) unless v.nil?
    end
  end
end


