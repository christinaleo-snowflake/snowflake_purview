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

## [Continue to setup instructions . . .](../modules/module00.md)
