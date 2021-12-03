[< Previous Module](../modules/module03.md) | [HOME](../README.md) | [Next Module >](../modules/module05.md)

## Add the Snowflake Credentials to Purview

1. Open your Puview Instance.

![8C369F1F-85FA-4CE0-B430-0353A3C9131A_1_105_c](https://user-images.githubusercontent.com/83224172/144640288-bcc2707a-d158-4c8f-84e5-6a1fc5bca145.jpeg)

#### 2. Click the _Management_ menu button.

![89A7D9C7-49D0-4160-8813-635D55D1775A](https://user-images.githubusercontent.com/83224172/144640627-560b1d2a-7cd8-47f0-966d-b85a3e99af97.png)

2. Click _Credentials_.

![7AC8442B-17B3-486C-940E-B9740207431F_4_5005_c](https://user-images.githubusercontent.com/83224172/144640788-ee68e838-813c-4a36-a65f-6d9be319543d.jpeg)

3. Click _New_.

![E05ACD24-2CC5-4070-B118-160EC3DF8542](https://user-images.githubusercontent.com/83224172/144642672-0741cc28-733e-4fc1-b8c0-e35b15983c2e.png)

4. Enter a name for your credential. I chose `Snowflake`. Next, enter the user name whose credentials you want to use for the Snowflake connection. We're using `PURVIEW` for this lab. Then, select your key vault from the drop down menu. Finally, enter the secret name containing the Snowflake password, in this case, `SnowflakePurviewUser`.

![7E7C5BBD-55CF-43ED-8561-5BBCA700AC16](https://user-images.githubusercontent.com/83224172/144643820-4d260e8a-db81-4e4a-a653-d49d3edcc898.png)

> NOTE: Your Key Vault must be in the same subscription as your Purview instance. Instructions for setting up an Azure Key Vault can be found [here](https://docs.microsoft.com/en-us/azure/key-vault/general/quick-create-portal).

[Continue to next module . . .](../modules/module05.md)
