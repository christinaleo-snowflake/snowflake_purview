
  //someone with account admin access must set up this part
  USE ROLE ACCOUNTADMIN;

  //create role to allow read only access - this will later be assigned to the purview USER
  CREATE OR REPLACE ROLE purview_reader;

  //make sysadmin the parent role
  GRANT ROLE purview_reader TO ROLE sysadmin;

  //create warehouse -- account admin required
  CREATE OR REPLACE WAREHOUSE purview_wh WITH 
      WAREHOUSE_SIZE = 'XSMALL' 
      WAREHOUSE_TYPE = 'STANDARD' 
      AUTO_SUSPEND = 300 
      AUTO_RESUME = TRUE 
      MIN_CLUSTER_COUNT = 1 
      MAX_CLUSTER_COUNT = 2 
      SCALING_POLICY = 'STANDARD';

  //grant rights to the warehouse -- !without this the connection to snowflake will fail immediately!
  GRANT USAGE ON WAREHOUSE purview_wh TO ROLE purview_reader;

  // now that there's a warehouse assigned to the role, we set up the purview USER
  // !default role is important here!

  CREATE OR REPLACE USER purview 
      PASSWORD = '$tr0ngP@ssW0rdH3re!' 
      DEFAULT_ROLE = "purview_reader" 
      DEFAULT_WAREHOUSE = 'purview_wh'; 

  // add user to purview_reader role
  GRANT ROLE purview_reader TO USER purview;


  //now we grant reader access to the database we want to scan
  USE ROLE SECURITYADMIN;

  //we are using the snow_sample database, because it's in everyone's account
  GRANT USAGE ON DATABASE snow_sample TO purview_reader;

  //grant reader access to all the database structures that purview can currently scan
  GRANT USAGE ON ALL SCHEMAS IN DATABASE snow_sample TO role purview_reader;
  GRANT USAGE ON ALL FUNCTIONS IN DATABASE snow_sample TO role purview_reader;
  GRANT USAGE ON ALL PROCEDURES IN DATABASE snow_sample TO role purview_reader;
  GRANT SELECT ON ALL TABLES IN DATABASE snow_sample TO role purview_reader;
  GRANT SELECT ON ALL VIEWS IN DATABASE snow_sample TO role purview_reader;
  GRANT USAGE, READ on ALL STAGES IN DATABASE snow_sample TO role purview_reader;

  //grant reader access to any future objects that could be created
  GRANT USAGE ON FUTURE SCHEMAS IN DATABASE snow_sample TO role purview_reader;
  GRANT USAGE ON FUTURE FUNCTIONS IN DATABASE snow_sample TO role purview_reader;
  GRANT USAGE ON FUTURE PROCEDURES IN DATABASE snow_sample TO role purview_reader;
  GRANT SELECT ON FUTURE TABLES IN DATABASE snow_sample TO role purview_reader;
  GRANT SELECT ON FUTURE VIEWS IN DATABASEsnow_sample TO role purview_reader;
  GRANT USAGE, READ ON FUTURE STAGES IN DATABASE snow_sample TO role purview_reader;
