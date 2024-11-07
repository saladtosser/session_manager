# Session Manager

Session Manager is a Ruby on Rails application designed to streamline session attendance tracking. It allows attendees to register with their details, automatically sends WhatsApp invitations via Twilio, and includes an admin dashboard for managing registrations.

## Table of Contents
- [Features](#features)
- [Setup](#setup)
- [Environment Variables](#environment-variables)
- [Usage](#usage)
- [Admin Panel](#admin-panel)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)

## Features
- **User Registration**: Collects user information, including full name, email, phone number, and college.
- **Automated WhatsApp Invites**: Sends personalized WhatsApp messages using Twilio.
- **Admin Dashboard**: Allows administrators to view detailed attendance data.
- **Secure Access**: Admin panel is secured with login access.

## Setup

### Prerequisites
- Ruby 3.x
- Rails 7.x
- SQLite (or preferred database)
- Twilio Account (for WhatsApp messaging)
- Git (optional, for version control)

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/session_manager.git
   cd session_manager

    Install dependencies:

bundle install

Setup the database:

rails db:create db:migrate

Seed the database (if necessary):

rails db:seed

Start the Rails server:

    rails server

    Open your browser and navigate to http://localhost:3000 to access the application.

Environment Variables

    Copy the .env.example file to .env:

    cp .env.example .env

    Fill in the .env file with your Twilio and other sensitive credentials. You’ll need:
        TWILIO_ACCOUNT_SID: Your Twilio Account SID
        TWILIO_AUTH_TOKEN: Your Twilio Auth Token
        TWILIO_PHONE_NUMBER: Your Twilio phone number for sending WhatsApp messages

    Make sure to keep the .env file secure and do not commit it to version control.

Usage

    User Registration: Users can fill out the registration form with their details.
    WhatsApp Invites: After registration, users receive a custom WhatsApp message based on the provided information.
    Admin Dashboard: Accessible to administrators for managing registrations and viewing attendance details.

Admin Panel

The admin panel allows for easy management of attendee information. Features include:

    Overview: View all registrations and sort by criteria.
    Detailed Statistics: See attendance stats by date and college.
    Latest Registrations: Quickly view the 10 most recent registrations.

To access the admin panel:

    Go to http://localhost:3000/admin_area/login
    Log in with your admin credentials.

Technologies Used

    Ruby on Rails - Backend framework
    Bootstrap - Frontend framework for styling
    SQLite - Default database (can be replaced with PostgreSQL or MySQL)
    Twilio API - For sending WhatsApp invites

Contributing

Contributions are welcome! To contribute:

    Fork the repository.
    Create a new branch (git checkout -b feature/YourFeature).
    Commit your changes (git commit -am 'Add new feature').
    Push to the branch (git push origin feature/YourFeature).
    Create a new Pull Request.

License

This project is licensed under the MIT License.

Thank you for using Session Manager! If you have any questions or feedback, please feel free to reach out.


### Explanation

- **Environment Variables**: This README prompts users to configure `.env` securely.
- **Setup and Usage**: Clear steps guide users through installation, setup, and usage.
- **Admin Panel**: Instructions on accessing and using the admin features.
- **Technologies Used**: A brief overview of the technologies.
- **Contribution**: Guidelines for contributing to the project.
  
