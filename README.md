# Employee Database Mapping Project

This project involves designing and managing a relational database for an employee management system. The focus is on mapping employees to their places of work, departments, and related entities. It covers various aspects of database design, including Entity-Relationship Diagrams (ERD), SQL queries, XML file creation, XML Schema (DTD), and query languages like XPath and XQuery. Below is a detailed overview of the project's requirements and the corresponding technical approaches used.

## Project Overview

The project aims to create a comprehensive database system to manage employee data, including the following core elements:
- **Employee Information**: Personal details like name, ID, and contact information.
- **Department Information**: Details about departments within an organization, such as department name, location, and department head.
- **Workplace Information**: Locations and buildings where employees work, including office address and work schedules.
- **Relationships**: The associations between employees, departments, and workplaces.

---

## Technologies and Concepts Used

### 1. Entity Relationship Diagram (ERD)

The Entity Relationship Diagram (ERD) was created to represent the structure of the employee database visually. The diagram shows the relationships between entities, such as employees, departments, and workplaces.

- **Entities**:
  - **Employee**: Employee ID, name, contact information.
  - **Department**: Department ID, name, location.
  - **Workplace**: Workplace ID, address, work schedule.
  
- **Relationships**:
  - Employees are assigned to departments.
  - Employees work at specific workplaces.
  
This ERD was the foundation of the database schema and helped in generating the corresponding SQL queries.

---

### 2. SQL Statements

To implement the ERD, we wrote the necessary SQL statements to create tables and establish relationships between them. Here are the key SQL tasks involved:

- **Create Tables**: Define the structure of each entity, including constraints like primary and foreign keys.
- **Insert Data**: Populate the tables with sample data for employees, departments, and workplaces.
- **Retrieve Data**: Write SELECT queries to fetch information based on certain conditions.

Example SQL for creating the `Employee` table:
```sql
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    WorkplaceID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (WorkplaceID) REFERENCES Workplace(WorkplaceID)
);
```

---

### 3. SQL SELECT Statements

We wrote various SQL SELECT queries to retrieve employee-related data. For example:

- **Fetch all employees in a particular department**:
```sql
SELECT * FROM Employee
WHERE DepartmentID = 2;
```

- **Find employees working at a specific workplace**:
```sql
SELECT * FROM Employee
WHERE WorkplaceID = 3;
```

These SELECT statements were designed to fetch data based on the needs of the system.

---

### 4. XML File Representation

To demonstrate the mapping of relational tables to an XML file, we wrote XML files that represented the structure of the employee database.

Example of an XML file representing employees:
```xml
<employees>
    <employee>
        <employeeID>1</employeeID>
        <firstName>John</firstName>
        <lastName>Doe</lastName>
        <departmentID>2</departmentID>
        <workplaceID>3</workplaceID>
    </employee>
    <!-- More employee entries -->
</employees>
```

---

### 5. XML Tree Representation

The XML tree represents the hierarchical structure of the data. The employee data is nested under the root `<employees>` element, with each `<employee>` containing sub-elements like `<employeeID>`, `<firstName>`, `<lastName>`, and references to other entities (department and workplace).

---

### 6. XML Schema (DTD or XSD)

To define the structure of the XML file, we created an XML Schema Definition (XSD) or a Document Type Definition (DTD) to validate the XML structure.

Example XSD for employee data:
```xml
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="employees">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="employee" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="employeeID" type="xs:int"/>
                            <xs:element name="firstName" type="xs:string"/>
                            <xs:element name="lastName" type="xs:string"/>
                            <xs:element name="departmentID" type="xs:int"/>
                            <xs:element name="workplaceID" type="xs:int"/>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

---

### 7. XPath Queries

XPath was used to navigate and extract specific data from the XML file. For example, to find the employee with a specific ID, we used the following XPath expression:

```xpath
/employees/employee[employeeID='1']
```

This would return the `<employee>` element with the employeeID of 1.

---

### 8. XQuery

XQuery was used to perform more complex queries on the XML data. For example, to find all employees from a specific department and workplace, we used:

```xquery
for $emp in doc("employees.xml")//employee
where $emp/departmentID = 2 and $emp/workplaceID = 3
return $emp
```

This query returns the employee elements where both the departmentID and workplaceID match the specified values.

---

## Conclusion

This project demonstrates the integration of multiple database-related technologies, including ERD design, SQL query writing, and XML processing (with XPath and XQuery). The goal was to map an employee database, capturing relationships between employees, departments, and workplaces, and representing this data in both relational and XML formats.

By completing this project, we gained hands-on experience in:
- Database design using ERDs
- Writing SQL queries for data retrieval
- Converting relational data to XML format
- Using XML-related technologies such as XPath and XQuery

This project provided a comprehensive understanding of both relational databases and XML technologies in real-world applications.
