class Pokemon
  attr_accessor :name, :type
  attr_reader :db, :id
  def initialize(name, type, db, id = nil)
    @db = SQLite3::Database.new('../pokemon.db')
    @name = name
    @type = type
    @id = id

  end
end
