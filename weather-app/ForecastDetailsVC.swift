//
//  ForecastDetailsVC.swift
//  weather-app
//
//  Created by Bartosz Odrzywołek on 17/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit

class ForecastDetailsVC: UIViewController {

    // top stackview (summary) outlets
    
    @IBOutlet weak var weatherDescImg: UIImageView!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var dayLbl: UILabel!
    
    // Numbers in the outlets mean particular values in particular hours
    
    @IBOutlet weak var time1StackView: UIStackView!
    @IBOutlet weak var hour1: UILabel!
    @IBOutlet weak var temp1: UILabel!
    @IBOutlet weak var cloudiness1: UILabel!
    @IBOutlet weak var wind1: UILabel!
    @IBOutlet weak var humidity1: UILabel!
    
    @IBOutlet weak var time2StackView: UIStackView!
    @IBOutlet weak var time2: UILabel!
    @IBOutlet weak var temp2: UILabel!
    @IBOutlet weak var cloduiness2: UILabel!
    @IBOutlet weak var wind2: UILabel!
    @IBOutlet weak var humidity2: UILabel!
    
    @IBOutlet weak var time3StackView: UIStackView!
    @IBOutlet weak var time3: UILabel!
    @IBOutlet weak var temp3: UILabel!
    @IBOutlet weak var cloudiness3: UILabel!
    @IBOutlet weak var wind3: UILabel!
    @IBOutlet weak var humidity3: UILabel!
    
    @IBOutlet weak var time4StackView: UIStackView!
    @IBOutlet weak var hour4: UILabel!
    @IBOutlet weak var temp4: UILabel!
    @IBOutlet weak var cloudiness4: UILabel!
    @IBOutlet weak var wind4: UILabel!
    @IBOutlet weak var humidity4: UILabel!
    
    @IBOutlet weak var time5StackView: UIStackView!
    @IBOutlet weak var hour5: UILabel!
    @IBOutlet weak var temp5: UILabel!
    @IBOutlet weak var cloudiness5: UILabel!
    @IBOutlet weak var wind5: UILabel!
    @IBOutlet weak var humidity5: UILabel!
    
    @IBOutlet weak var time6StackView: UIStackView!
    @IBOutlet weak var hour6: UILabel!
    @IBOutlet weak var temp6: UILabel!
    @IBOutlet weak var cloudiness6: UILabel!
    @IBOutlet weak var wind6: UILabel!
    @IBOutlet weak var humidity6: UILabel!
    
    @IBOutlet weak var time7StackView: UIStackView!
    @IBOutlet weak var hour7: UILabel!
    @IBOutlet weak var temp7: UILabel!
    @IBOutlet weak var cloudiness7: UILabel!
    @IBOutlet weak var wind7: UILabel!
    @IBOutlet weak var humidity7: UILabel!
    
    // outlets for the bottom bar (today and next 3 days)
    
    @IBOutlet weak var todayDescImg: UIImageView!
    @IBOutlet weak var todayTempLbl: UILabel!
    
    
    @IBOutlet weak var in1DayWeekday: UILabel!
    @IBOutlet weak var in1DayDescImg: UIImageView!
    @IBOutlet weak var in1DayTempLbl: UILabel!
    
    @IBOutlet weak var in2DaysWeekdayLbl: UILabel!
    @IBOutlet weak var in2DaysDescImg: UIImageView!
    @IBOutlet weak var in2DaysTempLbl: UILabel!
    
    @IBOutlet weak var in3DaysWeekdayLbl: UILabel!
    @IBOutlet weak var in3DaysDescImg: UIImageView!
    @IBOutlet weak var in3DaysTempLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        time5StackView.alpha = 0
//        time6StackView.alpha = 0
//        time7StackView.alpha = 0
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
