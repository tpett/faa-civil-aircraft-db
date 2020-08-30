# frozen_string_literal: true

require 'csv'

FILES = [
  'data/ACFTREF.txt',
  'data/MASTER.txt'
].freeze

FILES.each do |filename|
  CSV.open("#{filename}.fixed", 'wb') do |new|
    CSV.foreach(filename, headers: true, liberal_parsing: true) do |row|
      new_row = row.map { |_, v| v&.strip }
      new << new_row[0..-2]
    end
  end
end
