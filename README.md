# World database MariaDB on Linux Fedora

### Linux terminal commands:

- Install database server:
  ```
  $ sudo yum install -y mariadb-server
  ```
- Check MariaDB version:
  ```
  $ mysql -V
  ```
  
- Start database server:
  ```
  $ sudo service mariadb start
  ```
  
- Improve security of database and setting important parameters of DB:
  ```
  $ mysql_secure_installation
  ```

- Download world database from ```https://downloads.mysql.com/docs/world-db.zip```.

- Extract and import file world.sql to database system:
  ```
  $ mysql -u root -p < world.sql
  ```

- Connect to database:
  ```
  $ mysql -u root -p
  ```

- List of databases:
  ```
  SHOW DATABASES;
  ```

- Select world database:
  ```
  USE world;
  ```

- Overview of tables:
  ```
  SHOW TABLES;
  ```
  
- Structure of tables:
  ```
  DESCRIBE city;
  DESCRIBE country;
  DESCRIBE countrylanguage;
  ```




