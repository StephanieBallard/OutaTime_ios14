//
//  TimeCircuitsViewController.swift
//  OutaTime_ios14
//
//  Created by Stephanie Ballard on 1/29/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

    @IBOutlet weak var destinationTime: UILabel!
    @IBOutlet weak var presentTime: UILabel!
    @IBOutlet weak var lastTimeDeparted: UILabel!
    @IBOutlet weak var speed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM:d:yyyy"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
    
    //*****Set the label that shows the present time on screen to the current date using the date formatter.
    
    var currntSpeed = 0
    
//    Set the speed label to show the current speed, with "MPH" appended to the end of the string.
//    Set the label showing the last time departed to "--- -- ----".
    
    @IBAction func setDestinationTimeButton(_ sender: UIButton) {
    }
    
    @IBAction func travelBackButton(_ sender: UIButton) {
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
//********Create an extension of the class at the bottom of the file and make the class conform to the protocol from the date picker view controller (That means listing it after the VC's class name and at least stubbing out the required delegate functions).

extension TimeCircuitsViewController: DatePickerDelegate {
    func destinationDateWasChosen(date: Date) {
        <#code#>
    }
    
    
}


//*****Set the DatePickerViewController object's delegate as the TimeCircuitsViewController object in the prepare method.

