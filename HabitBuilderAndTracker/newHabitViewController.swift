//
//  newHabitViewController.swift
//  HabitBuilderAndTracker
//
//  Created by Woulfe, Edmond   (woulf002) on 5/7/19.
//  Copyright © 2019 akhil. All rights reserved.
//

import UIKit

class newHabitViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func mondayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    @IBAction func tuesdayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    
    @IBAction func wednesdayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    @IBAction func thursdayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    
    @IBAction func fridayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    @IBAction func saturdayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    @IBAction func sundayButtonSelected(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    
    
}
