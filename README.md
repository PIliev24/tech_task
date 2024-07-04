Medication Management App
This project is a Flutter application designed to manage and display medications efficiently. It fetches medication data from a backend, processes it, and presents it in a user-friendly manner using cards. The app also supports pull-to-refresh functionality to keep the medication list updated.

Features
Fetch and display a list of medications.
Show medication details including name, price, and instructions in a styled card.
Pull-to-refresh functionality for updating the medication list.
Getting Started
To get started with this project, follow the instructions below:

Prerequisites
Flutter (Ensure you have Flutter installed on your local machine)

Installation
 Clone the repository: git clone https://github.com/PIliev24/tech_task
 Fetch dependencies: flutter pub get
 Run the app: flutter run

Directory Details
app: Contains the main application setup and dependency injections.
data: Contains the data layer including repositories and data sources.
domain: Contains the business logic including models, repositories, and services.
presentation: Contains the UI layer including app screens, themes, and utility widgets.
