CREATE SCHEMA preddb;
CREATE SCHEMA preddb_data;
CREATE TABLE IF NOT EXISTS preddb.registry(type VARCHAR(100), url VARCHAR(200) PRIMARY KEY);
CREATE TABLE IF NOT EXISTS preddb.table_index(tableid SERIAL PRIMARY KEY, tablename VARCHAR(100), numsamples INT, uploadtime TIMESTAMP, analyzetime TIMESTAMP, T TEXT, M_R TEXT, M_C TEXT, cctypes TEXT, path VARCHAR(200));
CREATE TABLE IF NOT EXISTS preddb.models(id SERIAL PRIMARY KEY, tableid INT REFERENCES preddb.table_index(tableid), chainid INT, X_L TEXT, X_D TEXT, modeltime TIMESTAMP, iterations INT);
