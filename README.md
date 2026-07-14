# Interview Scheduler

## Automation of Interview Scheduling Process

A web-based application developed to automate and simplify the interview scheduling process between candidates, employees, interview panels, and administrators.

This project was developed as an academic project using Java, JSP, Servlets, and MySQL.

---

# 📌 Project Overview

Managing interviews manually can be time-consuming and prone to errors such as scheduling conflicts, communication delays, and inefficient record management.

The **Interview Scheduler** system provides an automated solution for:

- Candidate registration
- Employee and panel management
- Interview scheduling
- Offer letter generation
- Candidate status tracking
- Administrative management

The system reduces manual work and improves efficiency in handling recruitment activities.

---

# 🎯 Objectives

- Automate interview scheduling procedures.
- Reduce paperwork and manual errors.
- Improve communication between HR, interview panels, and candidates.
- Provide centralized management of recruitment information.
- Track candidate progress throughout the recruitment process.

---

# ✨ Features

## 👨‍💼 Administrator Module

- Admin Login
- Add Employees
- Delete Employees
- Manage Interview Panels
- Create Interview Groups
- View Candidate Details
- Schedule Interviews
- Generate Offer Letters
- Monitor Recruitment Process

---

## 👨‍💻 Employee Module

- Employee Login
- View Assigned Interviews
- Update Candidate Status
- Change Password
- View Candidate Information

---

## 👨‍🎓 Candidate Module

- Candidate Registration
- Candidate Login
- View Interview Schedule
- Update Personal Information
- Track Interview Status
- Receive Offer Letter

---

# 🛠 Technologies Used

## Frontend

- HTML5
- CSS3
- JavaScript
- JSP (Java Server Pages)

## Backend

- Java Servlets
- JDBC

## Database

- MySQL

## IDE & Tools

- NetBeans IDE 8.2
- Apache Tomcat Server
- XAMPP / MySQL Server
- Git & GitHub

---

# 📂 Project Structure

```text
JobRegister/
│
├── Web Pages/
│   ├── Admin.jsp
│   ├── EmployeeLogin.jsp
│   ├── Registration.jsp
│   ├── CandidateHome.jsp
│   ├── InterviewGroup.jsp
│   ├── OfferLetter.jsp
│   ├── StatusEmployee.jsp
│   └── ...
│
├── Source Packages/
│
├── images/
│
├── WEB-INF/
│
├── nbproject/
│
└── README.md
```

---

# 🔐 User Roles

### Administrator

Responsible for:

- Managing employees
- Managing interview groups
- Scheduling interviews
- Monitoring candidates
- Generating reports

---

### Employee

Responsible for:

- Conducting interviews
- Updating candidate records
- Providing interview feedback

---

### Candidate

Responsible for:

- Registration
- Viewing interview schedules
- Tracking application status

---

# 🗄 Database

The project uses MySQL database to store:

- Candidate information
- Employee details
- Interview schedules
- Panel information
- Offer letters
- Status updates

---

# 🚀 Installation Guide

## Step 1

Install:

- JDK 8
- NetBeans IDE 8.2
- Apache Tomcat Server
- MySQL Server

---

## Step 2

Clone Repository:

```bash
git clone https://github.com/KarthikGV/interview-scheduler.git
```

---

## Step 3

Open Project:

```text
NetBeans IDE
→ File
→ Open Project
→ Select JobRegister Folder
```

---

## Step 4

Create Database:

```sql
CREATE DATABASE interview_scheduler;
```

Import the SQL file into MySQL.

---

## Step 5

Configure Database Connection.

Update database credentials inside:

```java
Connection con =
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/interview_scheduler",
"root",
"password"
);
```

---

## Step 6

Run Project using Apache Tomcat Server.

---

# 📸 Screenshots

Add screenshots here:

- Home Page
- Candidate Registration
- Employee Login
- Admin Dashboard
- Interview Scheduling Page
- Offer Letter Generation

---

# 🔮 Future Enhancements

- Email Notifications
- SMS Notifications
- Resume Upload System
- Online Interview Links
- Calendar Integration
- AI-based Candidate Screening
- Report Generation
- Cloud Deployment

---

# 🎓 Academic Purpose

This project was developed as a mini/final year academic project to demonstrate:

- Java Web Development
- Database Management
- JSP & Servlet Programming
- Recruitment Process Automation

---

# 👨‍💻 Author

**Karthik G V**

### GitHub

https://github.com/KarthikGV

### LinkedIn

https://www.linkedin.com/in/karthik-g-v/

---

# 📄 License

This project is developed for educational and learning purposes only.

---

# ⭐ If you found this project useful, please give it a star on GitHub.
