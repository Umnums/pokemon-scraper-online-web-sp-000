class Pokemon
  attr_accessor :name, :type
  attr_reader :db, :id
  def initialize(id:, name:, type:, db:)

  end

  def self.save(name, type, db)
   sql = <<-SQL
   INSERT INTO pokemon(name, type) VALUES(?, ?)
   SQL
   db.execute(sql, name, type)
  end

  def self.find(id)
    sql = <<-SQL
    SELECT * FROM pokemon
    WHERE id = ?
    SQL
    row = db.execute(sql, id)
    self.new(row[0],row[1],row[2],@db)
  end
end
