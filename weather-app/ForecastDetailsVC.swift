//
//  ForecastDetailsVC.swift
//  weather-app
//
//  Created by Bartosz Odrzywołek on 17/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit

class ForecastDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
