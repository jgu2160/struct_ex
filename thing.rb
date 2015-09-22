require 'ostruct'

class Thing < OpenStruct
  @@required_attrs = []

  def initialize(attrs)
    unless @@required_attrs.empty?
      if attrs.keys.none? { |k| @@required_attrs.include? k }
        raise RequiredAttrError, 'A required attribute is not present'
      end
    end

    super(attrs)
  end

  class << self
    def require(*args)
      @@required_attrs += args
    end
  end
end

class RequiredAttrError < StandardError
end
