class Pokemon
  attr_accessor :name, :type
  attr_reader :db, :id
  def initialize(name, type, db, id)
    @db = SQLite3::Database.new('../pokemon.db')

  end
end
