# FilmMaster 📽 🎬

## Description

This application allows users to easily store and manage their movie collection. It provides functionality for adding,
organizing, and retrieving movie information efficiently. Perfect for anyone looking to keep track of their favorite
films in one convenient place.

### Below is a demo version of the application. I would be thrilled if you could add your favorite movie! I'll definitely watch it on a free evening with some popcorn! 🍿

(The application is secured, so You cannot delete or edit movies)

```
http://srv29.mikr.us:20180/swagger-ui/index.html
```

## How to Run the Application:

### 1. Running app by docker

#### Steps:

- **Clone the Repository:** Clone this repository to your local machine using the following command in your terminal:

  **HTTPS**
   ```
   git clone https://github.com/Shair13/movie-manager.git
   ```
  **SSH**
  ```
   git clone git@github.com:Shair13/movie-manager.git
  ```

- **.env file:** Before running docker-compose, ensure you set the database username and password in the .env file.

- **Run the Application:** in main package run command:

   ```bash
   docker compose up
   ```

### 2. Running app by CMD.

#### Steps:

- **Clone the Repository:** Clone this repository to your local machine using the following command in your terminal:

  **HTTPS**
    ```
    git clone --recurse-submodules https://github.com/Shair13/movie-manager.git
    ```
  **SSH**
   ```
    git clone --recurse-submodules git@github.com:Shair13/movie-manager.git
   ```

- **Build the Application:** Navigate to the main folder that contains all microservices and run:

    ```bash
    ./build_all.sh
    ```

## Access the Application:
- Once the application is running, you can access it through the endpoints specified in the documentation below:

   ```
   http://localhost:20180/swagger-ui/index.html
   ```

  You also have access to the EUREKA panel, where you can check all connected microservices:

   ```
   http://localhost:30180
   ```

### IMPORTANT: The DELETE and UPDATE endpoints in the application are secured.

- To access them, you need to generate a TOKEN. Make a request to the following URL:

    ```
    http://srv29.mikr.us:40053/realms/Shair13/protocol/openid-connect/token
    ```
  with the provided data in body (x-www-from-urlencoded):

    ```
    * grant_type=password
    * client_id=movie-rest-api
    * username=user
    * password=password
    ```

  and you will receive a token for authorization.



    
    
    
    
    
    
    
    
 
