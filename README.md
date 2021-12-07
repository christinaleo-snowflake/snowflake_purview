# Connecting Snowflake to Purview

## ‼️ Before You Start

- You need a Snowflake account where you have ACCOUNTADMIN rights. [Register for a trial acccount.](https://signup.snowflake.com/)

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

## [Continue to first module . . .](/modules/module00.md)

- [Module 00 - Understanding How Purview Connects to Snowflake](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module00.md#understanding-how-purview-connects-to-snowflake)
- [Module 01 - Set Up Your Snowflake Environment](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module01.md#set-up-your-snowflake-environment)
- [Module 02 - Validate Your Setup](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module02.md#validate-your-setup)
- [Module 03 - Add Snowflake Credentials to Key Vault](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module03.md#add-snowflake-credentials-to-azure-key-vault)
- [Module 04 - Add Snowflake Credentials to Purview](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module04.md#add-the-snowflake-credentials-to-purview)
- [Module 05 - Add Snowflake as a Data Source](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module05.md#add-snowflake-as-a-data-source)
- [Module 06 - Set up a Database Scan](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module06.md#set-up-a-database-scan)
- [Module 07 - Monitor the Scan](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module07.md#monitor-the-scan)
- [Module 08 - View the Scanned Assets](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module08.md#view-the-scanned-assets)
- [Module 09 - Troubleshooting Tips](https://github.com/christinaleo-snowflake/snowflake_purview/blob/main/modules/module09.md#troubleshooting-tips)

