require 'rubygems'  # not necessary for Ruby 1.9
require 'mongo'

class TestMongo
	
	def initialize
		#connection = Mongo::Connection.new # (optional host/port args)
		@connection = Mongo::Connection.new("localhost")
		#connection = Mongo::Connection.new("localhost", 27017)
	end

	def ListAllDatabases
		@connection.database_names
		@connection.database_info.each { |info| puts info.inspect }
	end
	
	def InsertDocument
		db = @connection.db("mydb")
		coll = db["testCollection"]
		doc = {"name" => "MongoDB", "type" => "database", "count" => 1, "info" => {"x" => 203, "y" => '102'}}
		id = coll.insert(doc)
		coll.find.each { |row| puts row.inspect }
	end
	
end



TestMongo.new().ListAllDatabases()
TestMongo.new().InsertDocument()


class Book

  attr_accessor :title, :author, :category

  def initialize (title, author, category)
    @title = title
    @author = author
    @category = category
  end
end
