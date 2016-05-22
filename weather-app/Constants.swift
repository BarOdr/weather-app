//
//  Constants.swift
//  weather-app
//
//  Created by Bartosz Odrzywołek on 19/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import Foundation

let URL_BASE = "http://api.openweathermap.org/data/2.5/"
let API_KEY = "892a28376f13432adb8621dd9b859df7"

typealias DownloadComplete = (gotWeather: Weather) -> Void
typealias TestCompleted = (testNumber: Int) -> Void

