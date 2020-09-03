CREATE TABLE IF NOT EXISTS models (
  code varchar(255) PRIMARY KEY,
  mfr varchar(255),
  model varchar(255),
  type_acft varchar(255),
  type_eng INT,
  ac_cat INT,
  build_cert_ind INT,
  no_eng INT,
  no_seats INT,
  ac_weight varchar(255),
  speed varchar(255)
);

COPY models
FROM '/Users/travis/Source/personal/aircraft-db/data/ACFTREF.txt.fixed'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS engines (
  code varchar(255) PRIMARY KEY,
  mfr varchar(255),
  model varchar(255),
  type varchar(255),
  horsepower INT,
  thrust INT
);

COPY engines
FROM '/Users/travis/Source/personal/aircraft-db/data/ENGINE.txt.fixed'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS aircraft (
  n_number VARCHAR(255) PRIMARY KEY,
  serial_number VARCHAR(255),
  mfr_mdl_code VARCHAR(255),
  eng_mfr_mdl VARCHAR(255),
  year_mfr VARCHAR(255),
  type_registrant varchar(255),
  name VARCHAR(255),
  street VARCHAR(255),
  street2 VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  zip_code VARCHAR(255),
  region varchar(255),
  county varchar(255),
  country VARCHAR(255),
  last_action_date VARCHAR(255),
  cert_issue_date VARCHAR(255),
  certification VARCHAR(255),
  type_aircraft VARCHAR(255),
  type_engine INT,
  status_code VARCHAR(255),
  mode_s_code VARCHAR(255),
  fract_owner VARCHAR(255),
  air_worth_date VARCHAR(255),
  other_names_1 VARCHAR(255),
  other_names_2 VARCHAR(255),
  other_names_3 VARCHAR(255),
  other_names_4 VARCHAR(255),
  other_names_5 VARCHAR(255),
  expiration_date VARCHAR(255),
  unique_id VARCHAR(255),
  kit_mfr VARCHAR(255),
  kit_model VARCHAR(255),
  mode_s_code_hex VARCHAR(255)
);

COPY aircraft
FROM '/Users/travis/Source/personal/aircraft-db/data/MASTER.txt.fixed'
DELIMITER ',' CSV HEADER;
