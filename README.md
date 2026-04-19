# Simple Calculator using JSP and Servlet

A clean, responsive web-based calculator built using **Java Servlets**, **JSP**, and **Tomcat 9**. This project demonstrates the MVC (Model-View-Controller) architecture by separating the frontend logic (JSP) from the backend processing (Servlet).

## 🚀 Features
*   **Basic Operations**: Addition, Subtraction, Multiplication, Division, and Modulus.
*   **Modern UI**: Responsive design using CSS Grid for a calculator-style keypad.
*   **Error Handling**: Prevents crashes from division by zero or invalid inputs.
*   **Efficient Processing**: Uses `RequestDispatcher` forwarding to maintain data without extra redirects.
*   **Decimal Support**: Handles both integers and floating-point numbers.

## 🛠️ Tech Stack
*   **Backend**: Java (JDK 8+)
*   **Server**: Apache Tomcat 9.0
*   **Frontend**: JSP, HTML5, CSS3
*   **IDE**: Spring Tool Suite (STS) / Eclipse

## 📂 Project Structure
```text
├── src/main/java
│   └── com.Calc
│       └── CalcServ1.java      # Servlet handling business logic
├── src/main/webapp
│   ├── Calculator.jsp          # Main UI and display logic
│   └── WEB-INF
│       └── web.xml             # Deployment descriptor
└── README.md

## ⚙️ How to Run
1. Clone or download this project.
2. Import it into **STS/Eclipse** as a "Dynamic Web Project".
3. Ensure **Apache Tomcat 9.0** is configured in your "Targeted Runtimes".
4. Right-click the project -> **Run As** -> **Run on Server**.
5. Access the app at: `http://localhost:8080/SimpleCalculator-Using-JSPServlet`

## 📝 License
This project is for educational purposes.