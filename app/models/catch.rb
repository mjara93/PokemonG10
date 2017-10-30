class Catch < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user

  after_create :level_start

  def level_start
    if self.level.nil?
      self.level = 1
      self.save
    end
  end
end
