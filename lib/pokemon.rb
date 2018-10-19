require 'pry'

class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemons (name, type)
      VALUES (?, ?)
    SQL
    
    db.execute(sql, name, type)
  end

end
