require 'pry'

class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL
    
    db.execute(sql, name, type)
  end
  
  def self.find(id, db)
    sql = <<-SQL
      SELECT *
      FROM pokemon
      WHERE id = ?
    SQL
    
    row = db.execute(sql, id)[0]
        binding.pry
    pikachu = Pokemon.new(row[0],row[1],row[2], db)
    pikachu
  end 

end
