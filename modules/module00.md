
# Understanding How Purview connects to Snowflake
The Purview connector takes several parameters during setup to allow it to perform scans of the Snowflake metadata. *USER NAME* and *PASSWORD* are provided through integration with [Azure Key Vault](https://github.com/tayganr/purviewlab/blob/main/modules/module02b.md#1-key-vault-access-policy-1-grant-yourself-access). You are then able to specify the *WAREHOUSE* you wish to use and the *DATABASE* you’d like to scan. Optionally, you can further scope your scan to an individual schema.

:warning:
>The important thing to note is that you are unable to specify a ROLE for the connector to use. 
>When Purview connects, it will use the _[default role](https://docs.snowflake.com/en/user-guide/admin-user-management.html#user-roles)_ assigned to the USER. 


##Least Privilege Access Model

