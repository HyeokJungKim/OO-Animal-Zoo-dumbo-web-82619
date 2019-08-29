class Zoo

  attr_reader :location, :name
  @@all = []

  def initialize(location, name)
    @location = location
    @name = name
    # self inside Initialize is the instance
    @@all << self
  end

  def self.all
    # self inside is the Zoo
    @@all
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    species = self.animals.map do |animal|
      animal.species
    end
    species.uniq
  end

  def find_by_species(species_argument)
    self.animals.select do |animal|
      animal.species() == species_argument
    end
  end

  def animal_nicknames
    self.animals.map {|animal| animal.nickname}
  end

  def self.find_by_location(location)
    @@all.select do |zoo|
      zoo.location == location
    end
  end

end
