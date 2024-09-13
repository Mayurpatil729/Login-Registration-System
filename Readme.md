<!-- @format -->

# Login-Registration System

This project is a simple login and registration system built using **Servlet**, **JSP**, and **JDBC**. The application allows users to register with their credentials, log in, and access a protected welcome page. Users can also log out, and the session will be invalidated. Data is stored in a MySQL database using **JDBC** for connectivity.

## Features

- User registration with form validation
- User login with session management
- Logout functionality
- User data stored in a MySQL database
- Clean MVC architecture

## Folder Structure

```bash
Login-Registration-System/
│
├── src/
│   ├── com/
│   │   └── example/
│   │       ├── controller/
│   │       │   ├── LoginServlet.java
│   │       │   ├── RegisterServlet.java
│   │       │   └── Logout.java
│   │       ├── dao/
│   │       │   ├── UserDao.java
│   │       │   ├── UserDaoImpl.java
│   │       ├── model/
│   │       │   └── User.java
│   │       └── util/
│   │           └── DBUtil.java
│
├── WebContent/
│   ├── WEB-INF/
│   │   └── web.xml
│   ├── login.jsp
│   ├── welcome.jsp
│   ├── logout.jsp
│   └── register.jsp
│
└── lib/
    └── mysql-connector-java-<version>.jar
```

## JDBC Connector

The **JDBC Connector** is used to establish a connection between the Java application and the MySQL database. In this project, the `mysql-connector-java-<version>.jar` is included in the `lib/` folder to facilitate communication with the MySQL database. The connector allows executing SQL queries to perform CRUD operations on the user data.

## Important Files

### 1. `LoginServlet.java`

This servlet handles the login logic. It accepts the login credentials from `login.jsp`, verifies the user by interacting with the database through `UserDaoImpl.java`, and manages session creation.

### 2. `RegisterServlet.java`

This servlet processes user registration. It receives data from `register.jsp`, validates it, and stores the new user's information in the database using `UserDaoImpl.java`.

### 3. `Logout.java`

This servlet handles the user logout functionality by invalidating the active session and redirecting the user to the `login.jsp` page.

### 4. `DBUtil.java`

The utility class responsible for creating and managing the database connection. It uses JDBC to connect to the MySQL database.

### 5. `User.java`

A model class that represents the user entity. It contains fields such as `id`, `username`, `password`, and getter/setter methods for encapsulation.

### 6. `UserDao.java`

An interface that defines the methods for accessing user data. Methods include user verification for login and saving user details during registration.

### 7. `UserDaoImpl.java`

This class implements `UserDao` and provides concrete logic for interacting with the database. It handles user authentication, registration, and retrieval from the database.

### 8. `login.jsp`

A JSP page where users enter their credentials. It sends a `POST` request to `LoginServlet.java` for validation.

### 9. `welcome.jsp`

A protected page that users are redirected to upon successful login. It displays a welcome message and provides a link to log out.

### 10. `logout.jsp`

A simple JSP page that informs the user they have successfully logged out and provides a link to the login page.

### 11. `register.jsp`

A JSP page where new users can register by entering their details. It sends a `POST` request to `RegisterServlet.java`.

## Prerequisites

- **JDK 8+**
- **Apache Tomcat** (or any servlet container)
- **MySQL** for database
- **MySQL JDBC Connector** (included in `lib/`)

## Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/Login-Registration-System.git
   ```

2. Import the project into your preferred IDE (Eclipse/IntelliJ).

3. Create a MySQL database and table:

   ```sql
   CREATE DATABASE user_db;

   CREATE TABLE users (
       id INT PRIMARY KEY AUTO_INCREMENT,
       username VARCHAR(50) UNIQUE,
       password VARCHAR(50)
   );
   ```

4. Configure the database connection in `DBUtil.java`:

   ```java
   private static final String URL = "jdbc:mysql://localhost:3306/user_db";
   private static final String USER = "root";
   private static final String PASSWORD = "your_password";
   ```

5. Build and deploy the project on a servlet container (Tomcat).

6. Access the application at:
   ```
   http://localhost:8080/Login-Registration-System/login.jsp
   ```
