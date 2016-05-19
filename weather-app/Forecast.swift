//
//  Forecast.swift
//  weather-app
//
//  Created by Bartosz Odrzywołek on 19/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import Foundation

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
        _rain = ""
    }
    return _weatherDesc
}

var sunrise: String {
    if _sunrise == nil {
        _sunrise = ""
    }
    return _sunrise
}
