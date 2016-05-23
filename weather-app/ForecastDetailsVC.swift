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
    
    // line break views' outlets
    
    @IBOutlet weak var lineBreak1: UIView!
    @IBOutlet weak var lineBreak2: UIView!
    @IBOutlet weak var lineBreak3: UIView!
    @IBOutlet weak var lineBreak4: UIView!
    @IBOutlet weak var lineBreak5: UIView!
    @IBOutlet weak var lineBreak6: UIView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewWillAppear(animated: Bool) {
        makeStacksAlphaZero()
        stacksFadeIn()
    }
    
    override func viewWillDisappear(animated: Bool) {
        stacksFadeOut()
    }
    
    func makeStacksAlphaZero() {
        time1StackView.alpha = 0
        time2StackView.alpha = 0
        time3StackView.alpha = 0
        time4StackView.alpha = 0
        time5StackView.alpha = 0
        time6StackView.alpha = 0
        time7StackView.alpha = 0
    }
    
    func stacksFadeIn() {
        time1StackView.fadeIn()
        lineBreak1.fadeIn()
        time2StackView.fadeIn()
        lineBreak2.fadeIn()
        time3StackView.fadeIn()
        lineBreak3.fadeIn()
        time4StackView.fadeIn()
        lineBreak4.fadeIn()
        time5StackView.fadeIn()
        lineBreak5.fadeIn()
        time6StackView.fadeIn()
        lineBreak6.fadeIn()
        time7StackView.fadeIn()
    }
    
    func stacksFadeOut() {
        time1StackView.fadeOut()
        lineBreak1.fadeOut()
        time2StackView.fadeOut()
        lineBreak2.fadeOut()
        time3StackView.fadeOut()
        lineBreak3.fadeOut()
        time4StackView.fadeOut()
        lineBreak4.fadeOut()
        time5StackView.fadeOut()
        lineBreak5.fadeOut()
        time6StackView.fadeIn()
        lineBreak6.fadeOut()
        time7StackView.fadeOut()
    }
}
