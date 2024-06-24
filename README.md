# Practicum
 

This is a WPF application that allows users to search for customers by ID and view their details and associated dive events. This application uses a predefined data store that mimics data from a SQL database.

## Features
- Search for customers by their ID.
- Display customer details such as name, address, and contact information.
- List dive events associated with the searched customer.

## Getting Started
These instructions will help you set up and run DiveApp on your local machine.

### Prerequisites
- .NET 6 SDK or later
- Visual Studio 2022  

### Installation
1. Clone the repository to your local machine:
    ```sh
    git clone https://github.com/tshebo/ADDB-Practicum-CustomerDB.git 
    ```
2. Navigate to the project directory:
    ```sh
    cd ADDB-Practicum-CustomerDB
    ```

## Usage
1. Open the solution file `Practicum.sln` in Visual Studio.
2. Build the solution. 
3. Run the application.
4. In the main window, enter a customer ID in the text box and click the "Search" button to retrieve and display customer details and associated dive events.

## Data Schema
The application uses a predefined data store that mimics a SQL database schema. The following tables are used in the data store:

### Instructor Table
| Column     | Data Type  | Description             |
|------------|------------|-------------------------|
| INS_ID     | NUMBER     | Primary Key             |
| INS_FNAME  | VARCHAR2(50) | Instructor First Name   |
| INS_SNAME  | VARCHAR2(50) | Instructor Last Name    |
| INS_CONTACT| VARCHAR2(20) | Instructor Contact      |
| INS_LEVEL  | NUMBER     | Instructor Level        |

### Customer Table
| Column     | Data Type  | Description             |
|------------|------------|-------------------------|
| CUST_ID    | VARCHAR2(10) | Primary Key             |
| CUST_FNAME | VARCHAR2(50) | Customer First Name     |
| CUST_SNAME | VARCHAR2(50) | Customer Last Name      |
| CUST_ADDRESS| VARCHAR2(100)| Customer Address        |
| CUST_CONTACT| VARCHAR2(20) | Customer Contact        |

### Dive Table
| Column      | Data Type   | Description             |
|-------------|-------------|-------------------------|
| DIVE_ID     | NUMBER      | Primary Key             |
| DIVE_NAME   | VARCHAR2(100) | Dive Name              |
| DIVE_DURATION| VARCHAR2(20) | Dive Duration          |
| DIVE_LOCATION| VARCHAR2(100) | Dive Location         |
| DIVE_EXP_LEVEL| NUMBER     | Dive Experience Level  |
| DIVE_COST   | NUMBER      | Dive Cost              |

### DiveEvent Table
| Column        | Data Type   | Description             |
|---------------|-------------|-------------------------|
| DIVE_EVENT_ID | VARCHAR2(10) | Primary Key             |
| DIVE_DATE     | DATE        | Dive Date               |
| DIVE_PARTICIPANTS | NUMBER  | Number of Participants  |
| INS_ID        | NUMBER      | Foreign Key (Instructor) |
| CUST_ID       | VARCHAR2(10) | Foreign Key (Customer)   |
| DIVE_ID       | NUMBER      | Foreign Key (Dive)      |

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

---

**Note:** This application uses static data and does not connect to a live database. The data store is populated with predefined sample data as specified in the provided SQL schema. For production use, you may need to implement a proper database connection and data access logic.
