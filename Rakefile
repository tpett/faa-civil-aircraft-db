# frozen_string_literal: true

require 'csv'

desc 'Create And Fill Database'
task :setup do
  `psql postgres -c 'DROP DATABASE IF EXISTS aircraft_db'`
  `psql postgres -c 'CREATE DATABASE aircraft_db'`
  `psql aircraft_db --file=tables.sql`
end

desc 'Cleanup import data'
task :cleanup do
  files = [
    'data/ACFTREF.txt',
    'data/ENGINE.txt',
    'data/MASTER.txt'
  ].freeze

  files.each do |filename|
    CSV.open("#{filename}.fixed", 'wb') do |new|
      CSV.foreach(filename, headers: true, liberal_parsing: true) do |row|
        new_row = row.map { |_, v| v&.strip }
        new << new_row[0..-2]
      end
    end
  end
end
