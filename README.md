# Azure-Data-Warehouse-Implementation---Bike-Share-Analytics-

# Project Overview
Divvy is a bike sharing program in Chicago, Illinois USA that allows riders to purchase a pass at a kiosk or use a mobile application to unlock a bike at stations around the city and use the bike for a specified amount of time. The bikes can be returned to the same station or to another station. The City of Chicago makes the anonymized bike trip data publicly available for projects like this where we can analyze the data.

Since the data from Divvy are anonymous, we have created fake rider and account profiles along with fake payment data to go along with the data from Divvy. The dataset looks like this:

The goals of this project as following : 

- Design a star schema based on the business outcomes listed below;
- Import the data into Synapse;
- Transform the data into the star schema;
- and finally, view the reports from Analytics.

Task 1: Create your Azure resources
Azure Database for PostgresSQL
Azure Synapse workspace.
Azure Blob Storage.

Task 2: Design a star schema

Task 3: Create the data in PostgreSQL


Download the script file and place it in a folder where you can run a Python script
Download the data files(opens in a new tab) from the classroom resources
Open the script file in VS Code and add the host, username, and password information for your PostgreSQL database
Run the script and verify that all four data files are copied/uploaded into PostgreSQL
You can verify this data exists by using pgAdmin or a similar PostgreSQL data tool.

Task 4: EXTRACT the data from PostgreSQL
In your Azure Synapse workspace, we will use the ingest wizard to create a one-time pipeline that ingests the data from PostgreSQL into Azure Blob Storage. This will result in all four tables being represented as text files in Blob Storage, ready for loading into the data warehouse.

<img width="940" height="566" alt="image" src="https://github.com/user-attachments/assets/6bb60ff2-f165-4f3c-8023-2cfa0d793f7e" />

<img width="940" height="555" alt="image" src="https://github.com/user-attachments/assets/e314cc83-bfba-4ab8-be89-16217c15822f" />

<img width="940" height="485" alt="image" src="https://github.com/user-attachments/assets/62cb5dff-e09b-4af9-aeda-39b05bf27466" />

<img width="940" height="431" alt="image" src="https://github.com/user-attachments/assets/49637fad-4d49-404f-bee9-6fbdd83d0031" />

<img width="940" height="498" alt="image" src="https://github.com/user-attachments/assets/34b154c4-baee-4f90-9ce1-0e219ecdd7f1" />

<img width="940" height="460" alt="image" src="https://github.com/user-attachments/assets/26fc78e1-1d95-4f98-8053-0dbc445850f9" />

<img width="940" height="460" alt="image" src="https://github.com/user-attachments/assets/23a07a54-dce9-43fc-8c5f-149ebe67b0ed" />

<img width="940" height="499" alt="image" src="https://github.com/user-attachments/assets/bbe0c809-0101-4754-9b7b-cd4643297616" />

<img width="940" height="447" alt="image" src="https://github.com/user-attachments/assets/66f4e28b-89c9-4a41-af43-f56496640507" />



Task 5: LOAD the data into external tables in the data warehouse
Once in Blob storage, the files will be shown in the data lake node in the Synapse Workspace. From here, you can use the script-generating function to load the data from blob storage into external staging tables in the data warehouse you created using the serverless SQL Pool.



<img width="1893" height="862" alt="image" src="https://github.com/user-attachments/assets/f46ea886-1830-4db3-a39c-90d6a0738955" />
<img width="1847" height="814" alt="image" src="https://github.com/user-attachments/assets/567e6f9a-7685-47b3-b058-c1752473f583" />

<img width="1495" height="880" alt="image" src="https://github.com/user-attachments/assets/ab7e0c20-46ef-41cd-8085-b4f45de7a24a" />



# Verify Data Counts in Final Tables


<img width="1544" height="1002" alt="Screenshot 2025-11-15 044734" src="https://github.com/user-attachments/assets/05c6b893-9a38-49f7-9972-d67575c8a9da" />


