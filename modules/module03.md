[< Previous Module](../modules/module02.md) | [HOME](../README.md) | [Next Module >](../modules/module04.md)

## Add Snowflake Credentials to Azure Key Vault

#### 1. Log in to the Azure Portal.

#### 2. Navigate to your Key Vault instance.

#### 3. Click _Secrets_ under the Settings menu.

![88DC33C2-DA8E-44A8-AF3C-4E56E9678EE8](https://user-images.githubusercontent.com/83224172/144637634-ffe80dd7-bb95-41b4-8dd6-e24bcd7cff27.png)

#### 4. Click _Generate/Import_

![CC3D4046-8F07-4058-8852-A7793428F42E_4_5005_c](https://user-images.githubusercontent.com/83224172/144637952-896d3eb9-35c1-4582-9efd-4b0807fe2dd4.jpeg)

#### 5. Here is where you will enter password that corresponds to the Snowflake user we set up in [Module 01](../modules/module01.md). Note that Name is the secret's name, not the user name.

```
Name = SnowflakePurviewUser
Value = $tr0ngP@ssW0rdH3re!
```

![6DB35837-3E31-4DC2-9904-E6BBE9D7707B](https://user-images.githubusercontent.com/83224172/144641681-4ef6551d-4e9d-4614-ae67-f94fec21f6f8.png)


#### 6. Click _Create_ at the bottom of the window. You should see the secret you've just created appear in the list.

![442D0444-97E5-41BD-8651-DF1220B7EAD0_4_5005_c](https://user-images.githubusercontent.com/83224172/144641838-71a0be70-d0b7-44d0-966d-4627713542b0.jpeg)



[Continue to next module . . .](../modules/module04.md)
