# PostgreSQL Databases Release

This release adds the ability to Bosh to create, backup or restore databases within a PostgreSQL instance.

If ```bucket_name``` is provided this is used to find a database dump to restore or backup the database.  The database dumps are called pgdmp-$DATABASE_NAME.sql.

```rds``` should be set to true if creating databases within an RDS instance.

This release should work outside of AWS.

## Example manifest snippet

- If pgdmp-testdb.sql exists in the S3 bucket and the database does not exist this will perform a restore of the database
- If pgdmp-testdb.sql does not exist and the database does not exist an empty database will be created
- If the database already exists, then the database is dumped and stored within the S3 bucket with the name pgdmp-testdb.sql

```
- name: create-postgresql-database
  instances: 1
  lifecycle: errand
  stemcell: default
  vm_type: small_general
  networks:
  - name: private
  azs: [az1,az2]
  templates:
  - {name: postgresql-databases, release: postgresql-databases}
  properties:
   postgresql_databases:
     admin_username: postgres
     admin_password: PASSWORD
     admin_database: postgres
     host: RDS_INSTANCE_HOSTNAME
     port: 5432
     bucket_name: S3_BUCKET_NAME
     credentials_source: env_or_profile
     region: eu-central-1
     rds: true
     databases:
     - { name: testdb, username: tester, password: PASSWORD, extensions: [pgcrypto,citext] }
```
