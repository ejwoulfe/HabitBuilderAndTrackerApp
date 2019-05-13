//
//  DayView.swift
//  HabitBuilderAndTracker
//
//  Created by Woulfe, Edmond   (woulf002) on 5/7/19.
//  Copyright © 2019 akhil. All rights reserved.
//

import UIKit


class DayViewController: UIViewController{
    
    @IBOutlet weak var addNewHabitButton: UIButton!


  
   @IBOutlet weak var habitTable: UITableView!
    @IBAction func backToCalendarButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: {});
        self.navigationController?.popViewController(animated: true);
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    

}

