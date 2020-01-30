//
//  DatePickerViewController.swift
//  OutaTime_ios14
//
//  Created by Stephanie Ballard on 1/29/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

protocol DatePickerDelegate {
    func destinationDateWasChosen(date: Date)
}

class DatePickerViewController: UIViewController, DatePickerDelegate {
    func destinationDateWasChosen(date: Date) {
        print(".")
    }
    
    var delegate: DatePickerViewController?

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    //For the done IBAction, call the delegate method to inform the delegate of the new date chosen by the user. Also call that same dismiss method from above after the delegate method call. This will inform the delegate of the change, and then dismiss the view, revealing the time circuits underneath.
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
//        doneButton.delegate = self
//        doneButton.dataSource = self
//        doneButton.delegate = self
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
