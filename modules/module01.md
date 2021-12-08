[< Previous Module](../modules/module00.md) | [HOME](https://github.com/christinaleo-snowflake/snowflake_purview) | [Next Module >](../modules/module02.md)

## Set Up Your Snowflake Environment

For this lab, I will scan the CITIBIKE database in my Snowflake account. 

You will need to subsitute an appropriate database name for your account.

>The full script is available in the [code folder](../code/set_up_purview_access.sql) of this repository.

1. Set up the `purview_reader` role. You will need _ACCOUNTADMIN_ rights to do this.
```
USE ROLE ACCOUNTADMIN;

//create role to allow read only access - this will later be assigned to the purview USER
CREATE OR REPLACE ROLE purview_reader;

//make sysadmin the parent role
GRANT ROLE purview_reader TO ROLE sysadmin;
```

2. Create a warehouse for Purview to use.
```
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
```

3. Create the Purview USER.
```
// now that there's a warehouse assigned to the role, we set up the purview USER
// !default role is important here!

CREATE OR REPLACE USER purview 
    PASSWORD = '$tr0ngP@ssW0rdH3re!'; 

ALTER USER purview SET DEFAULT_ROLE = purview_reader;
    
// add user to purview_reader role
GRANT ROLE purview_reader TO USER purview;
```

4. Grant reader rights to the database objects.
```
//grant reader access to all the database structures that purview can currently scan
GRANT USAGE ON ALL SCHEMAS IN DATABASE citibike TO role purview_reader;
GRANT USAGE ON ALL FUNCTIONS IN DATABASE citibike TO role purview_reader;
GRANT USAGE ON ALL PROCEDURES IN DATABASE citibike TO role purview_reader;
GRANT SELECT ON ALL TABLES IN DATABASE citibike TO role purview_reader;
GRANT SELECT ON ALL VIEWS IN DATABASE citibike TO role purview_reader;
GRANT USAGE, READ on ALL STAGES IN DATABASE citibike TO role purview_reader;

//grant reader access to any future objects that could be created
GRANT USAGE ON FUTURE SCHEMAS IN DATABASE citibike TO role purview_reader;
GRANT USAGE ON FUTURE FUNCTIONS IN DATABASE citibike TO role purview_reader;
GRANT USAGE ON FUTURE PROCEDURES IN DATABASE citibike TO role purview_reader;
GRANT SELECT ON FUTURE TABLES IN DATABASE citibike TO role purview_reader;
GRANT SELECT ON FUTURE VIEWS IN DATABASE citibike TO role purview_reader;
GRANT USAGE, READ ON FUTURE STAGES IN DATABASE citibike TO role purview_reader;
```


[Continue to next module . . .](../modules/module02.md)
