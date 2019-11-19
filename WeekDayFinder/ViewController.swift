//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Dmitry Kulagin on 05.07.2019.
//  Copyright © 2019 Dmitry Kulagin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var findDayButton: UIButton!
    
    @IBAction func findWeekDay(_ sender: UIButton) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        guard let day = dateTextField.text, let month = monthTextField.text, let year = yearTextField.text else { return }
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekend = dateFormatter.string(from: date)
        
        resultLabel.text = weekend
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("push")
        self.view.endEditing(true)
    }


}

