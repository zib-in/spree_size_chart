module Spree
  class SizeType < ActiveRecord::Base
  	attr_accessible :name
    def name_with_unit(unit)
      if unit and !unit.blank?
        "#{name} (#{unit})"
      else
        name
      end
    end
  end
end