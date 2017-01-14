class Player < ActiveRecord::Base
  def funky_method
    "#{self.name}.camelize"
  end
end
