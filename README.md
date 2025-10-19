I developed a data engineering project focused on efficient data integration, transformation, and version control. The project was designed to ingest data from two distinct sources: JSON files stored in an S3 bucket and CSV files uploaded locally using the Snowflake CLI.

Once the data was loaded into Snowflake, I utilized dbt (Data Build Tool) to perform data transformations, ensuring consistency, quality, and traceability throughout the pipeline. With dbt, I was also able to visualize the data lineage, providing a clear view of the data flow between models and improving transparency in the transformation process.

The dbt project was structured with both development (dev) and production (prod) environments, enabling safe testing and validation of transformations before deployment to production. The final dbt models were materialized as tables ready for end-user consumption, ensuring optimized performance and accessibility.

To maintain best practices in data engineering and collaborative development, I implemented version control using GitHub, simulating a full dev and prod environment workflow. This setup allowed for controlled code promotion, robust testing, and complete traceability across the project’s lifecycle.

![Pipeline Image](https://github.com/user-attachments/assets/b2260750-32c0-40b1-a743-bf3c002a08bf)
