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
    
    let locationManager = CLLocationManager()
    
    let userLocation = CLLocation(latitude: 50.21881632497241, longitude: 19.258997784288912)
    let userLat = "50.21881632497241"
    let userLon = "19.258997784288912"
    
    var weather = Weather()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        locationAuthStatus()
        print("we are here")
        
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
//            locationManager.startUpdatingLocation()
//        }
        
        weather.downloadForecastDetails { (weather: Weather) -> () in
            print("cloudiness is \(self.weather.cloudiness)")
        }
        
        weather.downloadForecastDetails { (weather: Weather) -> () in
            print("Completed")
            
        }
        
        weather.downloadCurrentWeatherDetails() { (weather: Weather) -> () in
            self.cityLbl.text = weather.weatherDesc
            print("This label conditions from closure, does it work? \(weather.weatherDesc)") // weatherDesc is "" because if the private var is nil, computed property assigns an empty string.
            // I want to create a function updateUI(weather: Weather) which will be called here and take the weather object created in downloadCurrentWeatherDetails as a parameter and update the UI accordingly, but I don't know how to pass the object to the closure
        }
    
        
    }
    
//    func locationAuthStatus() {
//        
//        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
//            print("Authorised when in use")
//        }
//                else {
//                    locationManager.requestWhenInUseAuthorization()
//            }
//    }
//    
//    func getLocation() {
//        
//    }
//    
//    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let currentLocation: CLLocationCoordinate2D = (manager.location?.coordinate) {
//        print("location is \(currentLocation)")
//        }
//        //NOT WORKING
//    }
//    
//    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
//        print("Error while updating location: \(error.localizedDescription)")
//    }
    
    

}



