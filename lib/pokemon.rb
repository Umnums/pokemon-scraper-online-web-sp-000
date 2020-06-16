class Pokemon

  def initialize(name, type, db, id)
    @db = SQLite3::Database.new('../pokemon.db')

  end
end
