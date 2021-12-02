
# Understanding How Purview connects to Snowflake
The Purview connector takes several parameters during setup to allow it to perform scans of the Snowflake metadata. *USER NAME* and *PASSWORD* are provided through integration with [Azure Key Vault](https://github.com/tayganr/purviewlab/blob/main/modules/module02b.md#1-key-vault-access-policy-1-grant-yourself-access). You are then able to specify the *WAREHOUSE* you wish to use and the *DATABASE* you’d like to scan. Optionally, you can further scope your scan to an individual schema.

>The important thing to note is that you are unable to specify a _ROLE_ for the connector to use. 
>When Purview connects, it will use the _[default role](https://docs.snowflake.com/en/user-guide/admin-user-management.html#user-roles)_ assigned to the _USER_. 


## Assigning Access Privileges to the Default Role

The principle of least privilege is the idea that at any user, program, or process should have only the bare minimum privileges necessary to perform its function. Adhering to this principle reduces the risk of exposing sensitive data in a way that compromises privacy and trust. With this principle in mind, the following [usage rights](https://docs.snowflake.com/en/user-guide/security-access-control-privileges.html) are the minimum required for a successful scan.
- USAGE on the specified _WAREHOUSE_
- USAGE on the specified _DATABASE_
- USAGE on the _SCHEMA(s)_ to be included in the scan
- SELECT on the objects to be included in the scan

Some decisions need to be made about how you will manage Purview's access to Snowflake.
- Which user account will Purview use?
- How many databases do you plan to scan?
- Will you include all the objects in the database or only some?
- What happens if the default role changes for the user you choose?

One solution to simplify the process and still maintain [security best practice](https://docs.snowflake.com/en/user-guide/security-access-control-considerations.html) is to create a USER specifically for Purview, assign a ROLE to that USER that has the required rights to all the current and future objects of the database to be scanned, and make sure that ROLE is set as the USER's default role.
