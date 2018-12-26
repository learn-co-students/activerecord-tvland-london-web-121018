class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    array = []
    self.characters.each do |character|
      array << "#{character.name} - #{character.show.name}"
    end
    array
  end
end
