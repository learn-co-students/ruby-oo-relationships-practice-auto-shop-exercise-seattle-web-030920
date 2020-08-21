class Car

  attr_reader :make, :model, :owner, :mechanic
  @@all=[]

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic=mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map{|car| car.classification}.uniq
  end

  def find_mechanics(classification)
    Mechanic.all.select{|mech| mech.specialty== classification}
  end
end