//
//  AddAlertViewController.swift
//  Drink
//
//  Created by woojin Choi on 2023/05/18.
//

import UIKit

class AddAlertViewController: UIViewController {
    var datePicked: ((_ date: Date) -> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func dissmisButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        datePicked?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
    
}
