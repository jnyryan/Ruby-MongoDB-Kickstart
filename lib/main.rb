require 'rubygems'  # not necessary for Ruby 1.9
require 'mongo'

def DoMongo

	connection = Mongo::Connection.new # (optional host/port args)
	connection = Mongo::Connection.new("localhost")
	connection = Mongo::Connection.new("localhost", 27017)
	connection.database_names
	connection.database_info.each { |info| puts info.inspect }
end

DoMongo()


class Book

  attr_accessor :title, :author, :category

  def initialize (title, author, category)
    @title = title
    @author = author
    @category = category
  end
end
