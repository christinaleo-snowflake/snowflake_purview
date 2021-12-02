# Connecting Snowflake to Purview

## ‼️ Before You Start

- You need an Azure account with an active subscription. [Create an account for free](https://azure.microsoft.com/free/?WT.mc_id=A261C142F).

- You need an active [Purview resource](https://docs.microsoft.com/en-us/azure/purview/create-catalog-portal).
- You will need to be a Data Source Administrator and Data Reader to register a source and manage it in the Purview Studio. See the A[zure Purview Permissions page](https://docs.microsoft.com/en-us/azure/purview/catalog-permissions) for details.
- You need an [Azure Key Vault](https://docs.microsoft.com/en-us/azure/key-vault/general/basic-concepts), in which you can store your Snowflake credentials.
- Set up the latest self-hosted integration runtime. For more information, see the [create and configure a self-hosted integration runtime guide](https://docs.microsoft.com/en-us/azure/purview/manage-integration-runtimes). The minimal supported Self-hosted Integration Runtime version is 5.11.7971.2.
  -  **Ensure** [JDK 11](https://www.oracle.com/java/technologies/javase/jdk11-archive-downloads.html) is installed on the virtual machine where the self-hosted integration runtime is installed.<br> 
  - **Ensure** [Visual C++ Redistributable for Visual Studio 2012 Update 4](https://www.microsoft.com/download/details.aspx?id=30679) is installed on the self-hosted integration runtime machine.<br> 


*****

If you are new to Purview, full instructions on how to get started can be found in this excellent [workshop](https://github.com/tayganr/purviewlab).

The remainder of this document assumes that you have a working instance of Azure Purview, a Self Hosted Integration Runtime VM, an Azure Key Vault and the correct access rights to add data sources and perform scans. 
***

## Understanding How Purview connects to Snowflake
The Purview connector takes several parameters during setup to allow it to perform scans of the Snowflake metadata. * *USER NAME* * and * *PASSWORD* * are provided through integration with [Azure Key Vault](https://github.com/tayganr/purviewlab/blob/main/modules/module02b.md#1-key-vault-access-policy-1-grant-yourself-access). You are then able to specify the * *WAREHOUSE* * you wish to use and the * *DATABASE* * you’d like to scan. Optionally, you can further scope your scan to an individual schema.

:warning:
>The important thing to note is that you cannot specify a ROLE for the connector to use. 
>When Purview connects, it will use the default role assigned to the USER. 
>You can find out a user’s default role by running the **SHOW ROLES;** command.
