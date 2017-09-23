# eShopModernizing web applications
This repo provides two sample hypothetical legacy eShop web apps (traditional ASP.NET WebForms and MVC  in .NET Framework) and how you can modernize them (Lift and Shift scenario) with Windows Containers and Azure Cloud into the following deployment options:
- Regular Windows Server 2016 VM (Virtual MAchine)
- ACS-Kubernetes orchestrator cluster
- Service Fabric orchestrators cluster 

All that modernization significantly improving the deployments for DevOps, without having to change the app's architecture or C# code.

The sample apps are simple web apps for the internal backoffice of an eShop so employees can update the Product Catalog. 
Both apps are therefore simple CRUD web application to update data into a SQL Server database. 

See a screenshots of both apps below.

INITIAL VERSIONS
![image](https://user-images.githubusercontent.com/1712635/30354184-db7f1098-97df-11e7-8e7b-c18c67b8ba2a.png)

CONTAINERIZED VERSION
![image](https://user-images.githubusercontent.com/1712635/30395628-9c4bff98-987b-11e7-82ca-89a1648f3bdc.png)

The WebFoms and MVC apps are pretty similiar in regards UI and business features. We just created both versions so you can compare, depending on what technology you are using for your existing apps (ASP.NET MVC or Web Forms).

![image](https://user-images.githubusercontent.com/1712635/30354210-0638f3b2-97e0-11e7-82c5-df18197ccdbd.png)


## Review the Wiki for detailed instructions on how to set it up and deploy to multiple environments

Wiki: https://github.com/dotnet-architecture/eShopModernizing/wiki

01. Tour on eShopModernizing apps implementation code
02. How to containerized the .NET Framework web apps with Windows Containers and Docker
03. How to deploy your Windows Containers based app into Azure VMs (Including CI CD)
04. How to deploy your Windows Containers based apps into Kubernetes in Azure Container Service (Including C CD)
05. How to deploy your Windows Containers based apps into Azure Service Fabric (Including CI CD)
05.1 Quick procedure to create a Secure Service Fabric cluster in Azure using PowerShell
10. How to migrate the SQL database to Azure with the Azure Database Migration Service
11. Deploying to Azure App Service, with NO Windows Containers (Including CI CD)

### Choose in memory mock-data or real database connection to a SQL Server container
The program allows either to connect to the database to get the catalog or to use mock data if one database is not available. The option to select one or the another is in the `Web.config` file:
>```
><add key="UseMockData" value="true" />
>``` 

In case the database is selected ( UseMockData equals to false) then the connection string can be set in the section:
>```
><add name="CatalogDBContext" connectionString="Your connection string here" providerName="System.Data.SqlClient" />
>``` 

## Additional apps to modernize: WCF services and WinForms desktop apps 
16
We're also creating an additonal modernization example based on a "legacy apps" which has a client WinForms desktop application and a SOAP service built with WCF (Windows Communication Foundation). You can explore it at:
17
https://github.com/dotnet-architecture/eShopModernizingWCFWinForms 
