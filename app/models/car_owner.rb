class CarOwner

  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def cars 
    Car.all.select{|car| car.owner==self}
  end

  def mechanics 
    self.cars.map(&:mechanic)
  end

  def self.average_number_of_cars 
    @@all.map{|owner| owner.cars.length}.reduce(0, :+)/@@all.length.to_f
  end
end
