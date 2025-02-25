## Steps
### DB
1. Run the SQL in [crProcessDataLog.sql](https://github.com/p-hatz/boomiProcessMetricsImport/blob/main/crProcessDataLog.sql)
### AtomSphere
2. Install the Bundle located at [https://platform.boomi.com/BoomiLabs.html#pub_bundles;/tab=my_bundles/bundle=040f8191-430f-4d9d-91d4-c2cce7e5c450/bundleOwner=true](https://platform.boomi.com/BoomiLabs.html#pub_bundles;/tab=my_bundles/bundle=040f8191-430f-4d9d-91d4-c2cce7e5c450/bundleOwner=true)
3. Open the Process `(proc) Download Execution Artifacts` from the AtomSphere Folder you installed the Bundle in and update the following (or reuse any existing connection(s))<br>
    a. Update the `Globs` Shape
   * `dppAtomId` to your AtomSphere Runtime where you want to ingest Process Logs from
   * `dppAccountId` to your AtomSphere Account Id
   * `dppFromDate` to set the From Date for ingesting all available Process Logs (e.g. `2025-02-11T00:00:00.000Z`)
   * `dppToDate` to set the To Date for ingesting all available Process Logs (e.g. `2025-02-11T23:59:59.999Z`)
     
    b. Update the `(conn) AtomSphere API` (HTTP) Connection
   * `Username`
   * `Password`

    c. Update the `(conn) platform.boomi.com` (HTTP) Connection
   * `Username`
   * `Password`
  
    d. Update the `(conn) AtomSphere API` (Boomi AtomSphere API) Connection
   * `WSDL`
   * `Username`
   * `API Token` or `Password`
  
    e. Update the `(conn) MariaDB` Connection (or whichever DB Connection you'll be using)
   * `Connection URL`
   * `Class Name` (usually `org.mariadb.jdbc.Driver`)
   * `Username` (with read/write access to the tables that were created in Step 1)
   * `Password`

   f. Update the following Operations to include the schema where the tables in Step 1 were created
   * `(oper) Process Data Log (INSERT)`
   * `(oper) Process Data Log (UPDATE)`  
4. Package and Deploy `(proc) Download Execution Artifacts`

### Testing
5. Change the `From Date` and `To Date` in the `Globs` Shape to a small timeframe to ensure a small amount of data is returned.

You should get data something similar to the following in the DB<br>
![image](https://github.com/user-attachments/assets/7bea2966-fb02-4591-899e-8f2af8e85d4d)
