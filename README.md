# README

This application integrates multiple services to deliver detailed location and weather information. Upon user input of an address, the application leverages the Google Maps API for address autocomplete functionality and map rendering. Subsequently, it utilizes the Geocoder gem to convert the address into geographic coordinates. These coordinates are then used to query the OpenWeatherMap API, which retrieves and displays comprehensive weather data, including current conditions and a forecast in 3-hour intervals for the next 9 hours. This setup ensures users receive accurate and timely weather updates based on their specified location.

## Preview

Here are some preview images of the application:

![Locations 1 with weather](https://github.com/chai2/weather/blob/main/public/loc_1.png)
*Home Page*

![Location 2 with Forecast](https://github.com/chai2/weather/blob/main/public/loc_2.png)
*Weather Details*

![DB Records](https://github.com/chai2/weather/blob/main/public/db_records.png)
*Rails Console*

* Ruby version
- 3.1.2p20

* System dependencies
- [Leveraged Google Cloud Platform for Maps API](https://developers.google.com/maps)
- [Weather & Forecast from Openweathermap](https://openweathermap.org/) 
- Geocoder

* Configuration
- Standard Rails application

* Database creation
- Postgres

* Database initialization
- Create DB: `rails db:create`
- Migrate: `rails db:migrate`
