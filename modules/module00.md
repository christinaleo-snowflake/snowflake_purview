
# Understanding How Purview Connects to Snowflake
The Purview connector takes several parameters during setup to allow it to perform scans of the Snowflake metadata. *USER NAME* and *PASSWORD* are provided through integration with the [Azure Key Vault](https://github.com/tayganr/purviewlab/blob/main/modules/module02b.md#1-key-vault-access-policy-1-grant-yourself-access). You are then able to specify the *WAREHOUSE* you wish to use and the *DATABASE* you’d like to scan. Optionally, you can further scope your scan to an individual schema.

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

>Code to set this up can be found [here](../code/set_up_purview_access.sql)

The access grants will need to be repeated for all the databases you wish to scan.

## That seems like a lot of work  . . . 

❓ **Why can't I just use the ACCOUNTADMIN role for the Purview User?**
- Well, you could, but the ACCOUNTADMIN role is not something to assign just for convenience sake. Please refer back to [Access Control Considerations](https://docs.snowflake.com/en/user-guide/security-access-control-considerations.html) for guidance.

❓ **Can I run the scan with a USER who has ACCOUNTADMIN as the default role?**
- Yes, but I refer you back to [Access Control Considerations](https://docs.snowflake.com/en/user-guide/security-access-control-considerations.html) for why you shouldn't have a user with with ACCOUNTADMIN as the default role in the first place.

❓ **Doesn't the database owner have all those object rights by default**
- Yes, but a DATABASE can only have one owner, and a USER can have only one default ROLE. _If_ all your databases are owned by the same ROLE, then you could get away with this, but again you're giving an awful lot of power to a user that you really only want to allow reader rights.

❓ **Wouldn't it be easier if I could specify a ROLE when I set up a scan?**
- Yes, but that's not currently an option.

**Your Snowflake admins will likely have a lot of tooling in place to automate granting different levels of access to your databases. They might even already have a reader role set up and ready to go. Have a chat to them to see how they can help.**
