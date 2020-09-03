# FAA Civil Aviation DB

This is a script to create a Postgres database locally from the FAA's
civil aviation [aircraft registry database download][faa].

## Instructions

Be sure you have Postgres installed and running locally and Ruby
installed.

1. Clone this repository.
1. Download the [database file][faa].
1. Unzip the file and place the txt files in the `data/` folder in this
   repository.
1. Run `rake` in the directory.

After completing this you will have a new database on your Postgres
database called `aircraft_db`. See the `tables.sql` file for the schema.

[faa]: https://www.faa.gov/licenses_certificates/aircraft_certification/aircraft_registry/releasable_aircraft_download/
