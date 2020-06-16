class Pokemon
  attr_accessor :name, :type
  attr_reader :db, :id
  def initialize(id:, name:, type:, db:)

  end

  def self.save(name, type, db)
   sql = <<-SQL
   INSERT INTO pokemon VALUES(?, ?)
   SQL
   db.execute(sql, name, type)
  end
end
