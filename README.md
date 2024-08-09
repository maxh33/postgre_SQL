# PostgreSQL Database Performance and Indexing

## Overview

This project demonstrates the impact of indexing on database query performance, executing queries, and comparing performance before and after applying an index.

### Table Creation and Data Insertion

The following SQL files demonstrate the creation of tables and the insertion of data into the PostgreSQL database:

- **[table_example.sql](./table_example.sql)**: This file contains the SQL commands to create the tables used in this project.
- **[content_example.sql](./content_example.sql)**: This file contains the SQL commands to insert data into the tables.

### Executing Queries

Executing Queries: Running SQL commands to retrieve, insert, update, or delete data in a database.
Making Searches: Using SQL `SELECT` statements to find and retrieve specific data from a database based on certain conditions.
In the provided SQL examples, you are executing queries to search for specific data:

- **[searches_example.sql](./searches_example.sql)**: Contains SQL commands to search for specific data.
  - Searching for orders made on a specific date.
  - Searching for order items with a quantity greater than or equal to 1.
  - Searching for the total sold of each product.
  - Searching for the total spent by each customer.
  - Searching for products with a specific word in the description.

  ### Indexing Example

Indexing is a crucial step in optimizing query performance. The following SQL file demonstrates the creation of an index and the subsequent improvement in query performance:

- **[indexing_example.sql](./indexing_example.sql)**: This file contains SQL commands to create an index and measure query performance before and after indexing.


### Query Performance

The performance difference with and without the index:

    Before Index: The query used a "Sequential Scan," which involved scanning through all the rows in the table. This resulted in higher execution times, especially with large datasets.

![Query Performance Before Index](https://github.com/maxh33/postgre_SQL/blob/main/BeforeIndex.png)


    After Index: The query used an "Index Scan," which directly accessed the required row using the index. This significantly reduced the execution time.

![Query Performance After Index](https://github.com/maxh33/postgre_SQL/blob/main/AfterIndex.png)

Key Metrics

    Execution Time Before Index: ~27.384 ms
    Execution Time After Index: ~0.034 ms

The introduction of an index on the id column reduced the query execution time by a factor of approximately 800x, demonstrating the effectiveness of indexing in optimizing query performance.

### Conclusion

Indexes are powerful tools in PostgreSQL for improving the performance of data retrieval operations. However, they should be used judiciously, as they also add overhead to data modification operations (INSERT, UPDATE, DELETE). This project highlights the substantial impact an index can have on query performance in a database with a large number of records.


### References

[PostgreSQL Documentation](https://www.postgresql.org/docs/)
[Indexing in PostgreSQL](https://www.postgresql.org/docs/current/indexes.html)
