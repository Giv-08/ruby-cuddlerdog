
<img width="1758" alt="index" src="https://github.com/user-attachments/assets/4ddcfeb2-4714-4810-a626-94e631d3337d">

How to run the app:
## Install Ruby (if not already installed)
For Windows: Use the RubyInstaller to install Ruby.
For MacOS: You can use Homebrew to install Ruby:
```
brew install ruby
```
For Linux: Use your package manager. For example, on Ubuntu:
```
sudo apt-get install ruby-full
```
### How to clone this project
```
git clone https://github.com/Giv-08/ruby-cuddlerdog.git
```
### Run the Application
The way to run the application depends on the structure of the app. Here are common ways:
1. Rails Application: If it's a Rails app, use the following command to start the server:
```
rails server
```
You can then access the app in your browser at http://localhost:3000.

2. Sinatra or Other Ruby Apps: Check the README.md file in the repository for specific instructions on how to run the app. For a Sinatra app, you might need to run:
```
ruby app.rb
```
3. If the app uses a different framework or has custom scripts, the repository might contain a startup file (e.g., start.rb, run.rb), so try:
```
ruby <filename>.rb
```
# Access the Application
Open your browser and navigate to the port the application is running on. If you're using Rails, for example, it will be http://localhost:3000.
---------------------------------------------
For a dog rental service, some core features could include:
- User Registration/Login: Users (customers) should be able to sign up, log in, and manage their profiles.
- Dog Listing: A list of available dogs, including details like breed, age, availability, price, and pictures.
- Booking System: Allow users to rent dogs for specific dates and times.
- Payments: Secure payments for renting dogs (e.g., using Stripe or PayPal).
- Owner Dashboard: Dog owners can manage their listings, add new dogs, update availability, and see bookings.

### Tech Stack for Full-Stack App
To build the full-stack web app, you can use a combination of the following technologies:
# Frontend (Client-Side):
```
HTML/CSS: For structure and styling.
JavaScript: For interactive elements.
SCSS: For easy, utility-first CSS styling.
```
# Backend (Server-Side):
```
Ruby on Rails: As the backend framework to handle APIs, routing, and business logic.
PostgreSQL: For the database to store information about users, dogs, and bookings.
```
# Authentication:
```
Devise (Rails) for secure user authentication and session management.
```
# Hosting:
```
Netlify: For hosting the frontend.
```

# DogCuddler allows you to log in and sign up (register):
Feature Overview:
This feature enables users to either sign up for a new account or log in to their existing account. It's essential for personalizing the experience and managing their activities, like booking dogs, viewing history, and more.
<img width="1787" alt="login" src="https://github.com/user-attachments/assets/64ea5407-9e69-4ee8-a772-042c0b3fbf25">

# DogCuddler allows you to search by filtering dog breeds and min/max prices:
Feature Overview:
This feature allows users to search and filter the available dogs based on criteria such as the breed and the rental price range.
<img width="1792" alt="filter_search" src="https://github.com/user-attachments/assets/28341117-dd37-4758-9aae-36001890fdf2">

# DogCuddler allows you to edit or update dog details:
Feature Overview:
This feature is mainly for dog owners who list their dogs for rent. They need the ability to update or edit the details of their dog listings, such as changing the dog’s availability, updating the price, or modifying the description.
<img width="1788" alt="edit_info" src="https://github.com/user-attachments/assets/5067bd12-6302-4ec6-845d-fb4139144c9a">


# DogCuddler allows you to view the dashboard, including approve or decline the rentals:
Feature Overview:
The dashboard is a central feature for both dog owners and users (renters). It allows them to manage their activities:
<img width="1789" alt="dashboard" src="https://github.com/user-attachments/assets/66fc1e72-52ec-4724-bf73-cfffc5bfc736">

![Uploading banner.png…]()

---------------------------------
# Developed by Le Wagon Students
Debbie Lee
Chutima Puthachon
Kara Yu
Manisha Parajuli
