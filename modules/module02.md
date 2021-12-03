[< Previous Module](../modules/module01.md) | [HOME](../README.md) | [Next Module >](../modules/module03.md)

## Validate Your Setup

#### 1. Log into your Snowflake account with the Purview User you created in the previous module.

![0092E134-AF86-4EC6-ABA1-D8CFD8FEFD49_1_105_c](https://user-images.githubusercontent.com/83224172/144627007-4baaa709-41f6-40c3-9510-8d6196fe3b78.jpeg)

#### 2. Make sure that the PURVIEW user has the correct default role. Running `SHOW ROLES;` will reveal this information. There shoudld be a letter `Y` in the _is_default_ column of the output.

![F9B41722-5C16-4DFC-BAAD-5B14B04500C8_1_105_c](https://user-images.githubusercontent.com/83224172/144631155-96f34087-6a5e-4466-8d52-94f447f85fd3.jpeg)

#### 3. Check that you can switch to the `purview_reader` role, access the warehouse, and access the database.

```
USE ROLE purview_reader;
USE WAREHOUSE purview_wh;
USE DATABASE citibike;
```

These statements should all run successfully and you should be able to expand the schema nodes of the database on the left.

Running `SHOW GRANTS TO ROLE purview_reader;` will further validate that the role has access to the necessary objects.

![638CAC39-E098-45C2-92DC-B11D6873F369_1_105_c](https://user-images.githubusercontent.com/83224172/144632906-2dbee031-c18b-4f8a-ac19-086f28e4a9a9.jpeg)

Now let's get our Snowflake credentials set up in Azure Key Vault.


[Continue to next module . . .](../modules/module03.md)
