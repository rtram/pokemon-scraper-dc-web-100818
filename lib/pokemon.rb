require 'pry'

class Pokemon



  def initialize(id:, name:, type:, db:)
    @@id, @@name, @type, @db = id, name, type, db
  end

end
