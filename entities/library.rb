# frozen_string_literal: true

require_relative '../dependencies'

class Library
  include Database
  include Statistics

  attr_reader :authors, :books, :readers, :orders

  def initialize (authors: [], books: [], readers: [], orders: [])
    @authors = authors
    @books = books
    @readers = readers
    @orders = orders
  end


  def add_entity_to_library(data)
    @authors  = data[:authors]
    @books    = data[:books]
    @readers  = data[:readers]
    @orders   = data[:orders]
  end
end
