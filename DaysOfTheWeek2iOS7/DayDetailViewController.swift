//
//  DayDetailViewController.swift
//  DaysOfTheWeek2iOS7
//
//  Created by Nick Reichard on 1/23/18.
//  Copyright © 2018 Nick Reichard. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = day
    }
    
    /// This string will get filled in with what ever day the user selects
    var day: String = ""

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
