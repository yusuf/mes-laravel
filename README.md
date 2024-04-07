# MES Expat System

## Clone this Project:

Clone to your local machine.

``git clone git@github.com:Maldicore/mes-laravel.git``
``cd mes-laravel``

## Running the Environment

Open the local project in Visual Studio Code. You should be prompted to reopen it in a container. Otherwise, you can open the command palette (Crtl+Shift+P) and select "Dev Container: Reopen in Container".

## How to Start Developing

*Install Dependencies:* Use Composer to install PHP dependencies defined in your `composer.json` file.

``composer install``

*Environment Configuration:* Copy the `.env.example` file to a new file named `.env`. This file contains environment-specific variables.

``cp .env.example .env``

Edit the `.env` file to match your local environment and Docker setup, especially database connection settings.

*Generate Application Key:* Laravel requires an application key for session and encryption services. Generate one using Artisan.

``php artisan key:generate``

*Migrate and/or Seed the Database:* Run migrations and optionally seed the database. Make sure your Docker containers for the database service are running if you’re using Docker for database management.

``php artisan migrate``
``php artisan db:seed``

*Opening the browser view:* The certificate is self-signed and you might have create an exception to proceed. Go to advance and allow to load the website anyways.

``https://localhost/``

## Best Practices

### Exiting the dev container

Once done open the command palette and choose "Dev Container: Reopen Folder Locally".

### Remove instances from PC

``docker-compose down --remove-orphans``