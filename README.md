# NCCA MIS INTERNSHIP PROJECT: PAYROLL VIEWER

An NCCA Mobile app that allows payroll viewing for employees.

This documentation includes how to setup dev environment using visual studio code, which is significantly more effective than using android studio IDE alone. Expect there will be some extensions to download for the VSCode IDE. To acquire an emulator, we will run Android studio just once ever, and configure an emulator from there. (I recommend to choose a system that is somewhere in between old and new)

## Recommended Tech Stack

- Flutter
- Laravel (not yet used ATM)

## Development Software Requirement

### Software

- Install [Git](https://git-scm.com/downloads)
- Install [Xampp](https://www.apachefriends.org/download.html) 
- Install [VSCode](https://code.visualstudio.com/)
- Install [Composer](https://getcomposer.org/download/)
- Install [Flutter](https://docs.flutter.dev/get-started/install)
- Install [Postman](https://www.postman.com/downloads/)
- Install [Android Studio](https://developer.android.com/studio)
- Install [VS Dependency](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022)

### Flutter Setup Guide

- (Watch)[https://www.youtube.com/watch?v=EhGW4UYpKSE&ab_channel=GhostTogether]

## VSCode Extension Requirement

- Install Flutter
- Awesome Flutter Snippet
- Material Icon Theme
- Gitlens

### Local Flutter App Deployment

- Open a new terminal
- Navigate to the the folder `frontend/payroll_viewer`, where the pubspec.yaml
- (Optional) Look to your left of VSCode interface and find the folder lib/configs
  - Click the file `global_config.dart`
  - Change the IP Address into your copied computer IP address `const SERVER_URL = "http://[PASTE COPIED IP ADDRESS]:8000/api";`
- Run your android emulator or mobile.
- Open VSCode terminal and type the command 'flutter run'.

### Notes

- When using laravel for backend, the 2 applications (Laravel and Flutter) should be running at the same time.
- When using laravel for backend, Make sure the mobile and PC are connected in the same network or same wifi.
