
# Troubleshooting Tips
- Check your account identifer in the source registration step. Leave off the `HTTPS://` bit at the front.
- Make sure the WAREHOUSE NAME and DATABASE NAME are in all caps on the scan setup page.
- Check your key vault. Make sure there are no typos in the password.
- Check the credential you set up in Puview. The user you specify here must have a default role with the necessary access rights to both the warehouse and the database you are trying to scan. There is a detailed explanation of what's needed in [the first module](../module00.md).
- USE `DESCRIBE USER;` to verify the default role of the user you've specified for Purview.
- Use Query History in Snowflake to see if any activity is coming across. 
  - If there's a problem with the account identifer or password, you won't see any activity at all
  - If there's a problem with the default role, you should at least see a `USE WAREHOUSE . . .` statement.
  - Using the `QUERY_HISTORY_BY_USER` [table function](https://docs.snowflake.com/en/sql-reference/functions/query_history.html) will help you identify what role is being used by the connection. Setting up a dedicated Purview User will make troubleshooting a lot easier.
