[< Previous Module](../modules/module05.md) | [HOME](https://github.com/christinaleo-snowflake/snowflake_purview) | [Next Module >](../modules/module07.md)

## Set Up a Database Scan

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
