//
//  ViewController.swift
//  weather-app
//
//  Created by Bartosz Odrzywołek on 17/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var weatherDescImg: UIImageView!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var sunriseLbl: UILabel!
    @IBOutlet weak var sunsetLbl: UILabel!
    @IBOutlet weak var cloudinessLbl: UILabel!
    @IBOutlet weak var humidityLbl: UILabel!
    @IBOutlet weak var windLbl: UILabel!
    
    //Outlets for the bottom bar
    
    @IBOutlet weak var todayDescImg: UIImageView!
    @IBOutlet weak var todayTempLbl: UILabel!
    
    @IBOutlet weak var in1DayWeekdayLbl: UILabel!
    @IBOutlet weak var in1DayDescImg: UIImageView!
    @IBOutlet weak var in1DayTempLbl: UILabel!
    
    @IBOutlet weak var in2DaysWeekdayLbl: UILabel!
    @IBOutlet weak var in2DaysDescImg: UIImageView!
    @IBOutlet weak var in2DaysTempLbl: UILabel!
    
    @IBOutlet weak var in3DaysWeekdayLbl: UILabel!
    @IBOutlet weak var in3DaysDescImg: UIImageView!
    @IBOutlet weak var in3DaysTempLbl: UILabel!
    
    let userLocation = CLLocation(latitude: 50.21881632497241, longitude: 19.258997784288912)
    let userLat = "50.21881632497241"
    let userLon = "19.258997784288912"
    
    var weather = Weather()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emptyTheLabels()
        
        Weather().downloadCurrentWeatherDetails { (gotWeather) in
            self.updateUI(gotWeather)
            self.labelsFadeIn()
        }
    }
    
    func updateUI(weather: Weather) {
        cityLbl.text = weather.city
        dayLbl.text = weather.currentDate
        tempLbl.text = weather.temperature
        descLbl.text = weather.weatherDesc
        sunriseLbl.text = weather.sunrise
        sunsetLbl.text = weather.sunset
        windLbl.text = weather.wind
        cloudinessLbl.text = weather.cloudiness
        humidityLbl.text = weather.humidity
        if 200 ... 232 ~= weather.weatherId {
            weatherDescImg.image = UIImage(named: "w-storm")
        } else if 300 ... 321 ~= weather.weatherId {
            weatherDescImg.image = UIImage(named: "w-lightrain")
        } else if 500 ... 531 ~= weather.weatherId {
            weatherDescImg.image = UIImage(named: "w-rain")
        } else if 600 ... 622 ~= weather.weatherId {
            weatherDescImg.image = UIImage(named: "w-snow")
        } else if weather.weatherId == 700 {
            weatherDescImg.image = UIImage(named: "w-fog")
        } else if weather.weatherId == 800 {
            weatherDescImg.image = UIImage(named: "w-sunny")
        } else if 801 ... 806 ~= weather.weatherId {
            weatherDescImg.image = UIImage(named: "w-clouds")
        } else if 900 ... 906 ~= weather.weatherId {
            weatherDescImg.image = UIImage(named: "w-extreme")
        } else {
            weatherDescImg.hidden = true
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        labelsFadeOut()
    }
    
    override func viewWillAppear(animated: Bool) {
        labelsFadeIn()
    }

    func emptyTheLabels() {
        cityLbl.text = ""
        dayLbl.text = ""
        tempLbl.text = ""
        descLbl.text = ""
        sunriseLbl.text = ""
        sunsetLbl.text = ""
        windLbl.text = ""
        cloudinessLbl.text = ""
        humidityLbl.text = ""
    }
    
    func labelsFadeIn() {
        self.cityLbl.fadeIn()
        self.dayLbl.fadeIn()
        self.tempLbl.fadeIn()
        self.descLbl.fadeIn()
        self.sunsetLbl.fadeIn()
        self.sunriseLbl.fadeIn()
        self.windLbl.fadeIn()
        self.cloudinessLbl.fadeIn()
        self.humidityLbl.fadeIn()
        self.weatherDescImg.fadeIn()
    }
    
    func labelsFadeOut() {
        self.cityLbl.fadeOut()
        self.dayLbl.fadeOut()
        self.tempLbl.fadeOut()
        self.descLbl.fadeOut()
        self.sunriseLbl.fadeOut()
        self.sunsetLbl.fadeOut()
        self.windLbl.fadeOut()
        self.cloudinessLbl.fadeOut()
        self.humidityLbl.fadeOut()
        self.weatherDescImg.fadeOut()
    }

}


