//
//  Forecast.swift
//  weather-app
//
//  Created by Bartosz Odrzywołek on 19/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Weather {
    
    private var _city: String!
    private var _day: String!
    private var _hour: String!
    private var _temperature: String!
    private var _cloudiness: String!
    private var _humidity: String!
    private var _rain: String!
    private var _weatherDesc: String!
    private var _sunrise: String!
    private var _sunset: String!
    private var _wind: String!
    
    var currentDate: String {
        return currentDateString()
    }
    
    var wind: String {
        if _wind == nil {
            _wind = ""
        }
        return _wind
    }
    
    var city: String {
        if _city == nil {
            _city = ""
        }
        return _city
    }
    
    var day: String {
        if _day == nil {
            _day = ""
        }
        return _day
    }

    var hour: String {
        if _hour == nil {
            _hour = ""
        }
        return _hour
    }

    var temperature: String {
        if _temperature == nil {
            _temperature = ""
        }
        return _temperature
    }

    var cloudiness: String {
        if _cloudiness == nil {
            _cloudiness = ""
        }
        return _cloudiness
    }

    var humidity: String {
        if _humidity == nil {
            _humidity = ""
        }
        return _humidity
    }

    var rain: String {
        if _rain == nil {
            _rain = ""
        }
        return _humidity
    }

    var weatherDesc: String {
        if _weatherDesc == nil {
            _weatherDesc = "empty"
        }
        return _weatherDesc
    }

    var sunrise: String {
        if _sunrise == nil {
            _sunrise = ""
        }
        return _sunrise
    }
    
    var sunset: String {
        if _sunset == nil {
            _sunset = ""
        }
        return _sunset
    }
    
    func downloadForecastDetails(completed: DownloadComplete) {
        
    }

    func downloadCurrentWeatherDetails(completed: DownloadComplete) {
        
        let weatherConditions = Weather()
        
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?lat=50.21881632497241&lon=19.258997784288912&units=metric&lang=pl&APPID=892a28376f13432adb8621dd9b859df7")!
        Alamofire.request(.GET, url).responseJSON { response in
            
            if let data = response.data {
                
                let json = JSON(data: data)
                
                if let weatherDescription = json["weather"][0]["description"].string {
                    weatherConditions._weatherDesc = weatherDescription.capitalizedString
                }
                
                if let city = json["name"].string {
                    weatherConditions._city = city.capitalizedString
                }

                if let windSpeed = json["wind"]["speed"].int {
                    weatherConditions._wind = "\(windSpeed) m/s"
                }
                
                if let humidity = json["main"]["humidity"].int {
                    weatherConditions._humidity = "\(humidity)%"
                }
                
                if let cloudiness = json["clouds"]["all"].int {
                    weatherConditions._cloudiness = "\(cloudiness)%"
                }
                
                if let sunrise = json["sys"]["sunrise"].double {
                    weatherConditions._sunrise = self.timeStringFromUnixTime(sunrise)
                }
                
                if let sunset = json["sys"]["sunset"].double {
                    weatherConditions._sunset = self.timeStringFromUnixTime(sunset)
                }

                if let temp = json["main"]["temp"].int {
                    weatherConditions._temperature = "\(temp)°"
                }
                
                completed(gotWeather: weatherConditions)
            }
        }
    }
    
    func timeStringFromUnixTime(unixTime: Double) -> String {
        let date = NSDate(timeIntervalSince1970: unixTime)
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        let timeString = dateFormatter.stringFromDate(date)
        return timeString
    }
    
    func currentDateString() -> String {
        let date = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "EEE, d MMMM"
        let dateString = dateFormatter.stringFromDate(date)
        return dateString
    }
}