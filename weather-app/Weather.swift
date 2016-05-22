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
    
    private var _day: String!
    private var _hour: String!
    private var _temperature: String!
    private var _cloudiness: String!
    private var _humidity: String!
    private var _rain: String!
    private var _weatherDesc: String!
    private var _sunrise: String!
    private var _sunset: String!

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
            _weatherDesc = ""
        }
        return _weatherDesc
    }

    var sunrise: String {
        if _sunrise == nil {
            _sunrise = ""
        }
        return _sunrise
    }
    
    func downloadForecastDetails(completed: DownloadComplete) -> Weather {
        
        var forecastDet = Weather()
        
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/forecast?lat=50.21881632497241&lon=19.258997784288912&APPID=892a28376f13432adb8621dd9b859df7")!
        let request = Alamofire.request(.GET, url).responseJSON { response in
        
            if let data = response.data {
                let json = JSON(data: data)
                let name = json["city"]["name"].string!
                print("name is \(name)")
                forecastDet._cloudiness = name
            }
            
            completed(weather: forecastDet)
        }
        
        return forecastDet
    }
    
    func downloadCurrentWeatherDetails(completed: DownloadComplete) {
        
        var weatherConditions = Weather()
        
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?lat=50.21881632497241&lon=19.258997784288912&APPID=892a28376f13432adb8621dd9b859df7")!
        Alamofire.request(.GET, url).responseJSON { response in
            
            if let data = response.data {
                let json = JSON(data: data)
                weatherConditions._weatherDesc = json["weather"][0]["description"].string! //just for demostration purposes
                print(weatherConditions._weatherDesc)
            }
        }
        
        completed(weather: weatherConditions)
    }
    

    func getLocation() {
        
    }
}