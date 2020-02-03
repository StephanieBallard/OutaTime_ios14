//
//  TimeCircuitsViewController.swift
//  OutaTime_ios14
//
//  Created by Stephanie Ballard on 1/29/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

    var currentSpeed = 0
    var destinationDate: Date?
    
    @IBOutlet weak var destinationTimeLabel: UILabel!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        destinationTimeLabel.text = "--- -- ----"
        presentTimeLabel.text = dateFormatter.string(from: Date())
        lastTimeDepartedLabel.text = "--- -- ----"
        speedLabel.text = "\(currentSpeed) MPH"
        // Do any additional setup after loading the view.
    }
    
    var timer: Timer?
  var df: DateFormatter {
      let formatter = DateFormatter()
      formatter.dateFormat = "MMM dd yyyy"
      formatter.timeZone = TimeZone(secondsFromGMT: 0)
      return formatter
  }
  var speed = 0
  var destinationDate: Date?
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
      return .lightContent
  }
    
    //*****Set the label that shows the present time on screen to the current date using the date formatter.
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }
    
//    Set the speed label to show the current speed, with "MPH" appended to the end of the string.
//    Set the label showing the last time departed to "--- -- ----".
    
    @IBAction func setDestinationTimeButton(_ sender: UIButton) {
    }
    
    @IBAction func travelBackButton(_ sender: UIButton) {
        if let _ = destinationDate {
            startTimer()
        }
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "ModalDestinationDatePickerSegue" {
           let datePickerVC = segue.destination as! DatePickerViewController
           datePickerVC.delegate = self
        
    }
    
    func startTimer (){
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: updateSpeed(timer:))
    }
z
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
//********Create an extension of the class at the bottom of the file and make the class conform to the protocol from the date picker view controller (That means listing it after the VC's class name and at least stubbing out the required delegate functions).

extension TimeCircuitsViewController: DatePickerDelegate {
    func destinationDateWasChosen(date: Date) {
        <#code#>
    }
    
    
}


//*****Set the DatePickerViewController object's delegate as the TimeCircuitsViewController object in the prepare method.

