## Project Documentation: Multi-Form Input Validation App

## 1. Introduction

This project is a **multi-step form application** built using **Flutter**. The app is designed to collect user information across **two screens** while enforcing **input validation** to ensure data correctness. The validation logic prevents users from entering invalid data and provides real-time feedback through error messages.

## 2. Project Overview

The application consists of **two primary screens**:

- **Screen 1 (Personal Information)**  
  - First Name  
  - Last Name  
  - City  
  - Country  
  - **Validation:** Ensures that all fields are filled in correctly before proceeding.

- **Screen 2 (Contact Information)**  
  - Email Address  
  - Phone Number  
  - **Validation:**  
    - The email must contain "@" and end with ".com".  
    - The phone number must be **exactly 10 digits**.

Each input field is validated, and **error messages** are displayed when incorrect input is provided. A **"Next" button** moves users to the next screen only if all fields are valid.

## 3. Features & Functionalities

✔ **Multi-Screen Navigation:** Users move seamlessly between forms.  
✔ **Input Validation:** Prevents incorrect or incomplete data submission.  
✔ **Error Handling:** Displays clear messages when input validation fails.  
✔ **Button Navigation:** "Next" and "Back" buttons allow users to navigate.  
✔ **Code Structure:**  
   - The `main.dart` file contains only the **core app logic** and `runApp()` function.  
   - Screens are organized in the `screens/` folder for better **modularity**.

## 4. Implementation Details

- The app **uses the `Form` and `TextFormField` widgets** to handle input fields.
- A **`GlobalKey<FormState>`** is assigned to each form to validate inputs.
- The **Navigator** class is used for moving between screens, passing validated data.

## 5. Conclusion

This project demonstrates the implementation of **multi-step form handling**, **input validation**, and **structured UI design** using Flutter. The approach ensures **data integrity** while maintaining a **user-friendly experience**.

