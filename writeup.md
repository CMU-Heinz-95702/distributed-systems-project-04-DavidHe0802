# Project 4 - Cryptocurrency Information System

## Overview
This project consists of a distributed application that includes a mobile Android app, a web service backend, and a web-based analytics dashboard. The goal is to create a comprehensive system for retrieving and analyzing real-time cryptocurrency data using the CoinGecko API.

---

## Requirements Breakdown

### 1. Implement a Native Android Application

#### a. Views in the Layout
The Android app utilizes the following views:
- **TextView**: Displays the name, symbol, price, and other details of the cryptocurrency.
- **EditText**: Allows the user to enter a coin ID to search for.
- **ImageView**: Shows the logo image of the cryptocurrency.
- **Button**: Provides a way for the user to initiate the search.

#### b. User Input
- The app prompts the user to enter a coin ID in an **EditText** field, which is then used to fetch the corresponding cryptocurrency information.

#### c. HTTP Request
- When the user initiates the search, the Android app makes a **GET** request to the web service, passing the coin ID as a query parameter.

#### d. Response Parsing
- The web service responds with a **JSON-formatted** response, which the Android app then parses to extract the relevant cryptocurrency data.

#### e. Display Information
- After receiving the response from the web service, the Android app populates the various views (**TextView**, **ImageView**) with the fetched cryptocurrency information.

#### f. Reusability
- The user can repeatedly enter new coin IDs and initiate the search process without needing to restart the application.

---

### 2. Implement a Web Service

#### a. API Implementation
- The web service exposes a single endpoint: `/api/coin/{coinId}`, which accepts a coin ID as a path parameter and returns the corresponding cryptocurrency data.

#### b. Receiving HTTP Requests
- The web service receives **GET** requests from the Android application, with the coin ID passed as a query parameter.

#### c. Business Logic
- The web service fetches cryptocurrency data from the **CoinGecko API**, processes the response, and formats the data.

#### d. JSON Response
- The web service replies to the Android application with a **JSON-formatted** response, following a custom schema.

---

### 3. Log Useful Information
The web service logs the following for each request:
- **Timestamp** of the request
- **Coin ID** requested
- **API response time**
- **Response status code**
- **Response data** received from the CoinGecko API

---

### 4. Store Logs in a Database
- The log data is stored in a **MongoDB** database hosted on **MongoDB Atlas**.
- Connection string:
''mongodb://myuser:mysecretpassword@cluster0-shard-00-02.cbkkm.mongodb.net:27017,cluster0-shard-00-01.cbkkm.mongodb.net:27017,cluster0-shard-00-00.cbkkm.mongodb.net:27017/myFirstDatabase?w=majority&retryWrites=true&tls=true&authMechanism=SCRAM-SHA-1''


---

### 5. Display Analytics and Logs on a Web Dashboard

#### Operations Analytics:
- Top 3 most frequently requested cryptocurrencies
- Average API response time
- Total number of API requests made in the last 24 hours

#### Full Logs:
- A table displaying all logged request and response data, including the timestamp, coin ID, API response time, and response status.

#### Implementation:
- The dashboard is built with **HTML**, **CSS**, and **JavaScript**.
- Data is fetched from the MongoDB database and displayed in a user-friendly format.

---

### 6. Deploy the Web Service to GitHub Codespaces
- The web service is deployed to **GitHub Codespaces** with the following configurations:
- A `Dockerfile` to containerize the application.
- A `.devcontainer.json` file for the Codespaces runtime.
- Deployment steps:
- Create a new Codespace from the GitHub repository.
- Codespaces automatically builds and runs the web service.
- The public URL provided by Codespaces is used by the Android app to access the web service.

---

## Conclusion
The Cryptocurrency Information System project demonstrates the ability to create a distributed application that fetches data from a third-party API, processes it in a web service, and displays analytics and logs in a web-based dashboard. The use of technologies like **Android**, **Java Servlets**, **MongoDB**, and **GitHub Codespaces** showcases the skills required to design and implement a comprehensive solution for cryptocurrency market data analysis.

