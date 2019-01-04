class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_show(name)
    Show.create(name:name)
  end

    def build_network(call_letters)
    newnetwork = Network.create(call_letters)
    self.network = newnetwork
  end
end