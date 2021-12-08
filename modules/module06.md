[< Previous Module](../modules/module05.md) | [HOME](https://github.com/christinaleo-snowflake/snowflake_purview) | [Next Module >](../modules/module07.md)

## Set Up a Database Scan


#### Validate Integration Runtime Setup

In order to scan Snowflake databases, a VM running a Self Hosted Integration Runtime (SHIR) is required. If you missed this step, instructions to set this up can be found in the [prerequisites](../README.md).

Before we set up our first scan, let's just make sure the SHIR is connected properly.

1. Click the _Data Map_ button on the left hand menu.

![0E59BCFC-D996-4347-B250-59763995ACF1_4_5005_c](https://user-images.githubusercontent.com/83224172/144645248-6a180bfa-a3c6-4360-9248-64cf63410072.jpeg)

2. Click _Integration runtimes_ under _Source management_.

![EFCB4E4D-3EED-4936-B7AC-B05B8837220B](https://user-images.githubusercontent.com/83224172/144645403-ea132461-b012-457e-a625-989cb888c5b4.png)

3. Make sure that you have a green check mark next to the name of your Integration Runtime.

![55A73B87-37D2-4D54-BFC6-99601D0A328F_4_5005_c](https://user-images.githubusercontent.com/83224172/144645851-97f9dbc2-549c-4d32-8c87-20cb1ae21c5e.jpeg)


#### Create New Scan

1. Click the _Sources_ menu, to the left of the screen, and toggle the view to _Map View_.

![755E0021-62F7-4291-A106-06EE04793DBA_4_5005_c](https://user-images.githubusercontent.com/83224172/144650081-079e4b36-5f7f-4d14-8c38-e86cbc572cce.jpeg)

2. Find the Snowflake tile and click the _New Scan_ button. 

![5DEC2C7F-F9CF-43B1-988E-62582701F2FF_1_105_c](https://user-images.githubusercontent.com/83224172/144650218-b1c01eed-7366-4170-a940-ee7984855772.jpeg)

3. Fill in the scan details and click _Continue_.
 > - **Name:** Choose something meaningful
 > - **Connect via integration runtime:** Pick from the drop-down. The one we just checked in the previous section should appear.
 > - **Credential:** Select from the drop-down. The credential we set up in [Module 04](../modules/module04.md) should appear in the list.
 >
 >⚠️ &nbsp; **Pay close attention here . . .**
 >  - **Warehouse:** Enter the warehouse name that will run the scan commands.
 >    - This must be in _ALL CAPS_.
 >    - The default role assigned to the user specified in the credential **must** have USAGE rights on this warehouse. If not, the scan will fail immediately. Please refer back to [Module 00](../modules/module00.md) for an explanation of how Purview connects to Snowflake.
 > - **Database:** Enter the name of the database you wish to scan. 
 >    - This must be in _ALL CAPS_.
 >   - The default role assigned to the user specified in the credential **must** have adequate rights on the database objects. Please refer back to [Module 00](../modules/module00.md) for an explanation of how Purview connects to Snowflake.


![6D93FC29-21A4-443D-ADDF-27C0A8B3C69F](https://user-images.githubusercontent.com/83224172/144653024-effaabef-004c-48dd-83ad-b1bf3c835220.png)

4. Now, choose a scan trigger. You can scan on a regular schedule, or run a one-off scan. For this exercise, choose _Once_ and click _Continue_.

![56DC7D51-9617-43AF-8313-A0B8FE1459EF](https://user-images.githubusercontent.com/83224172/144653336-f7e7535b-a6ce-4eca-97f4-302a35089c62.png)

5. Finally, click _Save and run_.
6. 
![D84009B3-7754-46AE-9076-B446A4AFBB72](https://user-images.githubusercontent.com/83224172/144653525-e68562b3-a54c-4003-9a38-6b94060ff31a.png)


[Continue to next module . . .](../modules/module07.md)
