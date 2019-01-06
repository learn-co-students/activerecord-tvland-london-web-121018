class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}" 
    end

    def list_roles
     char = Character.find_by_actor_id(self.id)
     char[:name] 
     show = Show.find_by_id(char[:show_id])

     return "#{char[:name]} - #{show[:name]}"
    end
end