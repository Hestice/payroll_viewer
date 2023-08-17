# NCCA MIS INTERNSHIP PROJECT: PAYROLL VIEWER

An NCCA Mobile app that allows payroll viewing for employees

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
- PHP Intelephense (not yet being used)

## Setting Development Environment

### Local Laravel Deployment (not yet being used)

- Clone your fork project
- Open VSCode and open the folder of `backend/supply_chain_api`
- Make sure xampp Apache and MySQL is turned on.
- Open a browser and goto `localhost/phpmyadmin`.
- Create a new database and name it as `db_supply_chain`
- Ask your mentor for an .env file.
- Change the .env file.

  - `DB_DATABASE=db_supply_chain`
  - `DB_USERNAME=root`
  - `DB_PASSWORD=`

- Copy and paste the .env file under supply_chain_api folder (name it as is `.env`).
- Open a terminal in VSCode and type the command `composer install`.
- Type the command `php artisan migrate`.
- Type the command `php artisan key:generate`.
- Type the command `ipconfig`.
- Copy your computer IP address.
- Type the command `php artisan serv --host=[PASTE COPIED IP ADDRESS] --port=8000`.

### Local Flutter App Deployment

- Open a new window of VSCode
- Open the folder `frontend/supply_chain`
- Look to your left of VSCode interface and find the folder lib/configs
- Click the file `global_config.dart`
- Change the IP Address into your copied computer IP address `const SERVER_URL = "http://[PASTE COPIED IP ADDRESS]:8000/api";`
- Run your android emulator or mobile.
- Open VSCode terminal and type the command flutter run.

### Notes

- The 2 application (Laravel and Flutter) should be running at the same time.
- Make sure your mobile and PC are connected in the same network or same wifi.
