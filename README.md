# Java Banking Management System

This is a simple Banking Management System built using Java. It allows users to perform basic banking operations such as account creation, deposit, withdrawal, balance checking, and transaction history.

## 🚀 Features

- Create a new bank account
- Deposit and withdraw money
- Check account balance
- View transaction history
- Simple console-based interface

## 🛠️ Technologies Used

- **Java (Core Java)**
- **JDBC** for database connectivity
- **MySQL** as the database
- **IntelliJ IDEA / Eclipse** for development

## 🗄️ Database Structure

**Table: accounts**
- `id` (Primary Key)
- `name`
- `email`
- `balance`

**Table: transactions**
- `id`
- `account_id` (Foreign Key)
- `type` (Deposit/Withdraw)
- `amount`
- `timestamp`

## ⚙️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/banking-system-java.git
   cd banking-system-java
